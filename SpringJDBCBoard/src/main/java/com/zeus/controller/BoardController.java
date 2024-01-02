package com.zeus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zeus.domain.Board;
import com.zeus.service.BoardService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("board")
public class BoardController {

	//Board 서비스 에서 상속받는 인플리먼트가 들어온다.
	@Autowired
    private BoardService service;

	
    @RequestMapping(value = "/registerForm", method = RequestMethod.GET)
    public String registerForm(Board board, Model model) throws Exception {
        log.info("registerForm");

        return "board/register";
    }

    //String 일때 views/... .jsp
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(Board board, Model model) throws Exception {
        log.info("register");
        service.register(board);
        model.addAttribute("msg", "등록이 완료되♘습니다.");

        return "board/success";
    }

    //void 일때 return "boardList" 로 보낸다고 생각 
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public void list(Model model) throws Exception {
        log.info("list");

        model.addAttribute("list", service.list());
    }
    
    
    @RequestMapping(value = "/read", method = RequestMethod.GET)
    public void read(int boardNo, Model model) throws Exception {
        log.info("read");

        model.addAttribute(service.read(boardNo));
    }
    //삭제
    @RequestMapping(value = "/remove", method = RequestMethod.POST)
    public String remove(int boardNo, Model model) throws Exception {
        log.info("remove");
        service.remove(boardNo);
        model.addAttribute("msg", "삭제가 완료되♘습니다.");

        return "board/success";
    }
    //수정 > modify로 넘어간다.
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public void modifyForm(int boardNo, Model model) throws Exception {
        log.info("modifyForm");

        model.addAttribute(service.read(boardNo));
    }
    //수정
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modify(Board board, Model model) throws Exception {
        log.info("modify");
        service.modify(board);

        model.addAttribute("msg", "수정이 완료되♘습니다.");
        return "board/success";
    }
}