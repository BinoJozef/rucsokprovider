package com.rucsok.rucsok.view.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.rucsok.rucsok.service.RucsokService;
import com.rucsok.rucsok.view.model.RucsokInsertRequest;
import com.rucsok.rucsok.view.transform.RucsokTransformer;

@RestController
public class PostRucsokController {
	public static final String REQUEST_MAPPING = "/rucsok";

	@Autowired
	private RucsokService rucsokService;

	@Autowired
	private RucsokTransformer rucsokTransformer;

	@ResponseBody
	@RequestMapping(name = "postrucsok", path = REQUEST_MAPPING, method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.CREATED)
	public void putRucsok(@RequestBody RucsokInsertRequest request, Principal principal) {		
		rucsokService.saveRucsok(rucsokTransformer.transformToRucsok(request), principal.getName());
	}

}