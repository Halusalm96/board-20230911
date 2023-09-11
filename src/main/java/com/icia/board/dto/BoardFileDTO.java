package com.icia.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class BoardFileDTO {
    private String originalFileName;
    private String storedFileName;
    private int boardId;
}
