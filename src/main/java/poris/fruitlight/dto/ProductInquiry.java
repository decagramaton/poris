package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/**
 * 
 * @author 이은지
 *
 */
@Data
public class ProductInquiry {
	//상품문의 관련 DTO
	private int INQUIRY_NO;			//상품문의 no(PK)
	private int BOARD_NO;			//상품게시글 no(FK)
	private String PRODUCT_NAME;	//상품이름
	private String INQUIRY_CONTENT;	//문의내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date INQUIRY_DATE;		//문의날짜
	private String strInquiryDate;	//문의날짜(날짜 포맷팅 후 저장할 필드)
	private boolean EMPTANSWER;		//답변여부(default true)
	private String ANSWER_CONTENT;	//답변내용
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date ANSWER_DATE;		//답변날짜
	private String strAnswerDate;	//답변날짜(날짜 포맷팅 후 저장할 필드)
	private String SHOPPER_NAME;	//질문자
}
