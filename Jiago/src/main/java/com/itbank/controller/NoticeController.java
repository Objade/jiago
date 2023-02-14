package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.NoticeDTO;
import com.itbank.model.Paging;
import com.itbank.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
   
   @Autowired private NoticeService noticeService;
   
   @GetMapping("/list")						
	public ModelAndView list(@RequestParam(defaultValue="1") Integer page, @RequestParam("notice_name") String notice_name) {	
		
		ModelAndView mav = new ModelAndView();	

		int noticeCount = 0;
		Paging paging = null;		
		List<NoticeDTO> list = null;		
		
		if(notice_name != "") {
			noticeCount = noticeService.getNoticeSearchCount(notice_name);
			paging = new Paging(page, noticeCount);
			list = noticeService.search(notice_name, paging);			
		}
		else {
			noticeCount = noticeService.getNoticeCount();
			paging = new Paging(page, noticeCount);
			list = noticeService.getListAll(paging);
		}
		
		mav.addObject("notice_name", notice_name);
		mav.addObject("list", list);
		mav.addObject("paging", paging);
		
		return mav;	
	}   
   
   @GetMapping("/view/{notice_idx}")
   public ModelAndView view(@PathVariable("notice_idx") int notice_idx) {
      ModelAndView mav = new ModelAndView("/notice/view");
      NoticeDTO dto = noticeService.get(notice_idx);
      mav.addObject("dto", dto);
      return mav;
   }
   
   @GetMapping("/write")
   public void write() {}
   
   @PostMapping("/write")            
   public String write(NoticeDTO dto) {
      int row = noticeService.write(dto);
      System.out.println(row != 0 ? "작성 성공" : "작성 실패");
      return "redirect:/notice/list?notice_name=";
   }
   
   @GetMapping("/modify/{notice_idx}")
   public ModelAndView modify(@PathVariable("notice_idx") int notice_idx) {
      ModelAndView mav = new ModelAndView("/notice/modify");
      NoticeDTO dto = noticeService.get(notice_idx);
      mav.addObject("dto", dto);
      return mav;
   }
   
   @PostMapping("/modify/{notice_idx}")
   public String modify(NoticeDTO dto) {
      int row = noticeService.modify(dto);
      System.out.println(row != 0 ? "수정 성공" : "수정 실패");
      return "redirect:/notice/view/" + dto.getNotice_idx();
   }
   @GetMapping("/delete/{notice_idx}")
   public String delete(@PathVariable("notice_idx") int notice_idx) {
      int row = noticeService.delete(notice_idx);
      System.out.println(row != 0 ? "삭제 성공" : "삭제 실패");
      return "redirect:/notice/list?notice_name=";
   }
}