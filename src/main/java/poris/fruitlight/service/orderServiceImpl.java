package poris.fruitlight.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poris.fruitlight.dao.OrderHistoryDao;
import poris.fruitlight.dto.DeliveryParam;
import poris.fruitlight.dto.OrderHistory;
import poris.fruitlight.dto.ReceiptHistory;
import poris.fruitlight.dto.ShippingAddressParam;
import poris.fruitlight.dto.ShopperParam;

@Service
public class orderServiceImpl implements orderService{
	@Autowired
	OrderHistoryDao orderHistoryDao;
	
	@Override
	public ShopperParam getShopperInfo(String userId) {
		
		// JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 변경 필수
		ShopperParam shopper = new ShopperParam();
		shopper.setName("Hethod");
		shopper.setEmail("hethod@gmail.com");
		shopper.setTel("010-1234-1234");
		
		return shopper;
	}
	
	@Override
	public ShippingAddressParam getShippingAddressInfo(String userId) {
		
		// JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 변경 필수
		ShippingAddressParam shipAddress = new ShippingAddressParam();
		shipAddress.setShippingAddressNo(1);
		shipAddress.setName("배송지 이름 테스트 내용");
		shipAddress.setAddress("서울 중구 종로");
		shipAddress.setTel("010-1234-1234");
		
		return shipAddress;
	}
	
	@Override
	public List<DeliveryParam> getDeliveryInfo() {
		
		// JSP 화면 출력용 테스트 더미 데이터, 추후 DB 연결시 변경 필수
		List<DeliveryParam> deleveryList = new ArrayList<>();
		for(int i=1; i<=5; i++) {
			DeliveryParam dp = new DeliveryParam();
			dp.setName("제품"+i);
			dp.setStock(i);
			dp.setProductPrice(1000+i);
			deleveryList.add(dp);
		}
		return deleveryList;
	}

	@Override
	public void addOrder(OrderHistory orderHistory) {
		orderHistoryDao.insertOrderHistory(orderHistory);
	}

	@Override
	public void addReceipt(ReceiptHistory receiptHistory) {
		orderHistoryDao.insertReceiptHistory(receiptHistory);
	}
}
