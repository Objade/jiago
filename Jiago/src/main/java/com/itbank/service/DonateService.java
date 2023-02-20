package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.UserDonateDTO;
import com.itbank.repository.DonateDAO;

@Service
public class DonateService {

	@Autowired DonateDAO donateDAO;


	public HashMap<String, UserDonateDTO> getDonateList() {
		return donateDAO.selectDonateList();
	}

	
	
	
	
}
