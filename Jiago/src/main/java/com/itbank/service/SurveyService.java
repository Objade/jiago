package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.AnswerDTO;
import com.itbank.model.SurveyDTO;
import com.itbank.model.SurveyExampleDTO;
import com.itbank.model.SurveyQuestionDTO;
import com.itbank.model.UserDonateDTO;
import com.itbank.repository.SurveyDAO;

@Service
public class SurveyService {

   @Autowired private SurveyDAO dao;

   public List<SurveyDTO> selectList() {
      return dao.selectList();
   }

   public SurveyDTO getSurveyDetail(int survey_idx) {
      return dao.selectOneDetail(survey_idx);
   }

   public List<SurveyQuestionDTO> getSurveyQuestion(int survey_idx) {
      return dao.selectSurveyQuestion(survey_idx);
   }

   public List<SurveyExampleDTO> getSurveyExample(int survey_idx) {
      return dao.selectSurveyExample(survey_idx);
   }

   public int addAnswer(HashMap<String, String> map) {
      return dao.insertAnswer(map);
   }

   public List<Integer> getQuestionIDX(HashMap<String, String> map) {
      return dao.selectQuestionIdx(map);
   }


   public int answerSubstr(HashMap<String, Object> resultMap) {
      return dao.insertAnswerSubstr(resultMap);
   }

   public int deleteAnswerResult(HashMap<String, Object> resultMap) {
      return dao.deleteAnswerResult(resultMap);
   }

   public int addpoint(HashMap<String, Object> resultMap) {
	   return dao.insertUserPoint(resultMap);
   }

   public int addUserDonate(UserDonateDTO dto) {
	  return dao.insertUserDonate(dto);
   }

   public int minusUserPoint(UserDonateDTO dto) {
	  return dao.minusUserPoint(dto);
   }

	public int getUserPoint(int user_idx) {
		return dao.selectUserPoint(user_idx);
	}

	public List<SurveyDTO> getHomeSurvey() {
		return dao.selectHomeSurvey();
	}

	public int insertSurvey(SurveyDTO dto) {
	    return dao.insertSurvey(dto);
	}

	public List<SurveyQuestionDTO> selectQuestionList() {
	    return dao.selectQuestionList();
	}

	public int selectSurveyIdx() {
	    return dao.selectSurveyIdx();
	}



	
}

      
   