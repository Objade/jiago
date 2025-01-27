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

import com.itbank.model.BoardDTO;
import com.itbank.model.Paging;
import com.itbank.service.BoardService;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired private BoardService boardService;
	
	@GetMapping("/list")						
	public ModelAndView list(@RequestParam(defaultValue="1") Integer page, @RequestParam("qboard_title") String qboard_title) {	
		
		ModelAndView mav = new ModelAndView();	

		int boardCount = 0;
		Paging paging = null;		
		List<BoardDTO> list = null;		
		
		if(qboard_title != "") {
			boardCount = boardService.getBoardSearchCount(qboard_title);
			paging = new Paging(page, boardCount);
			list = boardService.search(qboard_title, paging);			
		}
		else {
			boardCount = boardService.getBoardCount();
			paging = new Paging(page, boardCount);
			list = boardService.getListAll(paging);
		}
		
		mav.addObject("qboard_title", qboard_title);
		mav.addObject("list", list);
		mav.addObject("paging", paging);
		
		return mav;	
	}
	
	@GetMapping("/view/{qboard_idx}")
	public ModelAndView view(@PathVariable("qboard_idx") int qboard_idx) {
		ModelAndView mav = new ModelAndView("/board/view");
		BoardDTO dto = boardService.get(qboard_idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("/write")
	public void write() {}
	
	@PostMapping("/write")				
	public String write(BoardDTO dto) {
		System.out.println(dto.getQboard_title());
		System.out.println(dto.getQboard_writer());
		System.out.println(dto.getQboard_content());
		System.out.println(dto.getQboard_privacy());
		int row = boardService.write(dto);
		System.out.println(row != 0 ? "작성 성공" : "작성 실패");
		return "redirect:/board/list?qboard_title=";
	}
	
	@GetMapping("/modify/{qboard_idx}")
	public ModelAndView modify(@PathVariable("qboard_idx") int qboard_idx) {
		ModelAndView mav = new ModelAndView("/board/modify");
		BoardDTO dto = boardService.get(qboard_idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/modify/{qboard_idx}")
	public String modify(BoardDTO dto) {
		int row = boardService.modify(dto);
		System.out.println(row != 0 ? "수정 성공" : "수정 실패");
		return "redirect:/board/view/" + dto.getQboard_idx();
	}
	@GetMapping("/delete/{qboard_idx}")
	public String delete(@PathVariable("qboard_idx") int qboard_idx) {
		int row = boardService.delete(qboard_idx);
		System.out.println(row != 0 ? "삭제 성공" : "삭제 실패");
		return "redirect:/board/list";
	}
		

}
