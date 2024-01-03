package com.zeus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeus.domain.Item;
import com.zeus.mapper.ItemMapper;

@Service
// ItemServicelmpl 객체가 되야  ItemService 로 이동하여 들어간다.
public class ItemServicelmpl implements ItemService {
	
	@Autowired
	private ItemMapper mapper;

	@Override
	public void regist(Item item) throws Exception {
		mapper.create(item);
	}

	@Override
	public Item read(Integer itemId) throws Exception {
		
		return mapper.read(itemId);
	}

	@Override
	public void modify(Item item) throws Exception {
		mapper.update(item);
	}

	@Override
	public void remove(Integer itemId) throws Exception {
		mapper.delete(itemId);
	}

	@Override
	public List<Item> list() throws Exception {
		return mapper.list();
	}

	@Override
	public String getPicture(Integer itemId) throws Exception {
		return mapper.getPicture(itemId);
	}

}
