package service.impl;

import model.Product;
import service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static Map<Integer,Product> productList=new HashMap<>();

   static {
       productList.put(1,new Product(1,"bánh",12000,"ngon","orion"));
       productList.put(2,new Product(2,"bánh",12000,"ngon","orion"));
       productList.put(3,new Product(3,"bánh",12000,"ngon","orion"));
       productList.put(4,new Product(4,"bánh",12000,"ngon","orion"));
       productList.put(5,new Product(5,"bánh",12000,"ngon","orion"));
       productList.put(6,new Product(6,"bánh",12000,"ngon","orion"));
       productList.put(7,new Product(7,"bánh",12000,"ngon","orion"));
   }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
    productList.put(productList.size()+1,product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int id, Product product) {

       productList.put(id,product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
