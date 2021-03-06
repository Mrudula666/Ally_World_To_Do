package com.cg.allyworld.chatsender.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.allyworld.chatsender.entity.ChatWebsite;
import com.cg.allyworld.chatsender.repository.SenderRepository;

@Service
public class SenderServiceImpl implements SenderService {

	@Autowired
	private ChatWebsite chat;

	@Autowired
	private SenderRepository repository;

	@Override
	public void replyingMessage(Integer senderId, Integer receiverId, String message) {

		System.out.println("Going to database");
		chat.setSenderId(senderId);
		chat.setReceiverId(receiverId);
		chat.setMessage(message);
		repository.save(chat);
	}

	@Override
	public void sendMessage(Integer senderId, Integer receiverId, String message) {
		System.out.println("Going to database");
		chat.setSenderId(senderId);
		chat.setReceiverId(receiverId);
		chat.setMessage(message);
		repository.save(chat);
	}

}
