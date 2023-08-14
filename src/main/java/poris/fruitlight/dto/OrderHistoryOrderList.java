package poris.fruitlight.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/**
 * 
 * @author 김진성
 *
 */
@Data
public class OrderHistoryOrderList {
   
   private int ORDER_NO;
   private int SHOPPER_NO;
   private String PRODUCT_NAME;
   private String SHIPPING_NAME;
   private String SHIPPING_ADDRESS;
   @DateTimeFormat(pattern="yyyy-MM-dd")
   private Date ORDER_DATE;
   private byte[] MEDIA_DATA;
   private int DISCOUNT_PRICE;
   private int STOCK;
   private String base64Img;
}