package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {		
		
		Product phone = new Product("p1234","iphone 6s",800000);
		
		phone.setDescription("4.7-inch , 1334x750 Renina HD");
		phone.setCategory("스마트폰");
		phone.setManufacturer("애플");
		phone.setUnitsInStock(1000);
		phone.setCondition("신상");
		
		Product notebook = new Product("p1235", "LG PC", 1500000);
		
		notebook.setDescription("13.3인치 ISP LED");
		notebook.setCategory("노트북");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("재생");
		
		Product tablet = new Product("p1236","갤럭시 탭s",900000);
		
		tablet.setDescription("212.8*125.6*6.6mm");
		tablet.setCategory("테블릿");
		tablet.setManufacturer("삼성");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("중고");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i < listOfProducts.size(); i++ ) {
			Product product = listOfProducts.get(i);
			
			if (product != null && product.getProductId() != null && 
				product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

}
