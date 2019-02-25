package com.altimetrik.poc.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.hsqldb.lib.StringUtil;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.altimetrik.poc.demo.bean.Account;
import com.altimetrik.poc.demo.bean.Response_VO;
import com.altimetrik.poc.demo.common.Versions;
import com.altimetrik.poc.demo.dao.AccountDao;
import com.altimetrik.poc.demo.dao.SearchCriteria;
import com.altimetrik.poc.demo.entity.AccountEntity;
import com.altimetrik.poc.demo.entity.AuditEntity;
import com.altimetrik.poc.demo.exception.DataException;

@RestController
@RequestMapping(value = "/app/demo/", consumes = Versions.V1_0, produces = Versions.V1_0)
public class AccountController {

	@Inject
	private AccountDao accDao;

	
	private static final Logger LOGGER = LoggerFactory.getLogger(AccountController.class);

	// @Cacheable(value="searchCache")
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public <T> ResponseEntity<T> searchAcc(@RequestParam(value = "type", required = true) String type,
			@RequestParam(value = "param", required = false) String param)
			throws DataException {
		List<SearchCriteria> params = new ArrayList<SearchCriteria>();
		LOGGER.info("search all [{}] with criteria [{}]",type, param);

		if (param != null) {
			Pattern pattern = Pattern.compile("(\\w+?)(:|<|>)(\\w+?),");
			// Pattern pattern = Pattern.compile("(\w+?)(:|<|>)(\w+?),");
			Matcher matcher = pattern.matcher(param + ",");
			while (matcher.find()) {
				params.add(new SearchCriteria(matcher.group(1), matcher.group(2), matcher.group(3)));
			}
		}
		ResponseEntity<T> e=null;
		if(StringUtils.equals(type, "account")){
			
			e=new ResponseEntity<T>((T) accDao.searchUser(params), HttpStatus.OK);
		}
		else if(StringUtils.equals(type, "audit")){
			
			e=new ResponseEntity<T>((T) accDao.searchAuditData(params), HttpStatus.OK);
		}
		else
			throw new DataException("11", "Search Type is not found !");
		return e;
	}

	
	@RequestMapping(value = "/registeraccount", method = RequestMethod.POST)
	public ResponseEntity<Response_VO> addAcc(@RequestBody Account account) throws DataException {
		LOGGER.info("add account [{}]", account);
	
		Response_VO response = new Response_VO("11", "Failure");
		if (accDao.addAcc(account) != null) {
			response.setResponseCode("00");
			response.setResponseMsg("Success !");
			;
		}
		return new ResponseEntity<Response_VO>(response, HttpStatus.OK);
	}

}
