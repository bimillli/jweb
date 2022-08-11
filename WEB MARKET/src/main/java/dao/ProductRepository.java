package dao;

import java.util.ArrayList;

import vo.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<>();
	//싱글톤 패턴으로 객체 생성
	private static ProductRepository instance = new ProductRepository();
	
	//생성자
	private ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch 1334X750 Renia HD display 8-megapixel "
				+ "isSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setProductImage("P1234.png");
		
		Product notebook = new Product("P1235", "LG PC그램", 1500000);
	    notebook.setDescription("212.8*125.6*6.6cm, SuperAMOLED display, Octa-Core processor");
	    notebook.setCategory("Notebook");
	    notebook.setManufacturer("Samsung");
	    notebook.setUnitsInStock(1000);
	    notebook.setCondition("Old");
	    notebook.setProductImage("P1235.png");
	    
		Product tablet = new Product("P1236", "Galaxy Tab5", 600000);
	    tablet.setDescription("212.8*125.6*6.6cm, SuperAMOLED display, Octa-Core processor");
	    tablet.setCategory("tablet");
	    tablet.setManufacturer("Samsung");
	    tablet.setUnitsInStock(1000);
	    tablet.setCondition("Old");
	    tablet.setProductImage("P1236.png");
	    
		listOfProducts.add(phone);  //리스트에 phone을 추가
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//싱글톤 패턴의 getInstance() 정의
	public static ProductRepository getInstance() {
		if(instance == null) {
			instance = new ProductRepository();
		}
		return instance;
	}
	
	//상품추가
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	
	//목록 보기
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	//상세보기(db가없을때 짜는 논리식, 메모리에서 꺼내옴)
	public Product getProductById(String productId) {
		Product productById = null;  //이름이 다른 객체 선언
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			String dbProductId = product.getProductId(); //이미 등록된 id
			if(dbProductId.equals(productId)) {//외부에서 전달된 id와 같으면
				productById = product;  //id가 같은 상품을 저장
				break;
			}
		}
		return productById;
	}
	
	
	
}





