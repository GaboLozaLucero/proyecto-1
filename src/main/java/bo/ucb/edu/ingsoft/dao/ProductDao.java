package bo.ucb.edu.ingsoft.dao;

import org.apache.ibatis.annotations.Mapper;
import bo.ucb.edu.ingsoft.model.Product;

import java.util.List;

@Mapper
public interface ProductDao {
    public Product findByProductId(Integer productId);
    public void create(Product product);
    public List<Product> getProducts();
    public void delete(Product product);
    public void update(Product product);
}
