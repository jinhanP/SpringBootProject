package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.CodeGroup;
import com.project.mapper.CodeGroupMapper;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	private CodeGroupMapper mapper;

	@Override // mapper 여ㅕㄴ결해주고 codeGroupmapper에 가서도 만들어준다.
	public void register(CodeGroup codeGroup) throws Exception {
		mapper.create(codeGroup);

	}

	@Override
	public List<CodeGroup> list() throws Exception {
		return mapper.list();
	}
	
	// 상세 페이지
	@Override
	public CodeGroup read(String groupCode) throws Exception
	{ return mapper.read(groupCode);
	}

}
