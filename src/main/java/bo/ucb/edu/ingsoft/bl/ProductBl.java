package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.ProductDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.ProductDto;
import bo.ucb.edu.ingsoft.model.Product;
import bo.ucb.edu.ingsoft.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductBl {
    private TransactionDao transactionDao;
    private ProductDao productDao;

    @Autowired
    public ProductBl(TransactionDao transactionDao, ProductDao productDao) {

        this.transactionDao = transactionDao;
        this.productDao = productDao;
    }
    public ProductDto findProductById(Integer productId) {
        Product product = productDao.findByProductId(productId);
        ProductDto productDto = new ProductDto();
        productDto.setProductId(product.getProductId());
        productDto.setProductName(product.getProductName());
        productDto.setModel(product.getModel());
        productDto.setProductDescription(product.getProductDescription());
        productDto.setStock(product.getStock());
        productDto.setWeight(product.getWeight());
        productDto.setCompanyId(product.getCompanyId());
        productDto.setProductTypeId(product.getProductTypeId());
        productDto.setCityId(product.getCityId());
        productDto.setUnitPrice(product.getUnitPrice());
        productDto.setCurrency(product.getCurrency());
        productDto.setBrandId(product.getBrandId());
        return productDto;
    }
    public List<ProductDto> selectProducts(){
        List<Product> products= productDao.getProducts();
        List<ProductDto> productsDto = new ArrayList<ProductDto>();
        ProductDto productDto = new ProductDto();
        for (Product product: products){
            productDto.setProductId(product.getProductId());
            productDto.setProductName(product.getProductName());
            productDto.setModel(product.getModel());
            productDto.setProductDescription(product.getProductDescription());
            productDto.setStock(product.getStock());
            productDto.setWeight(product.getWeight());
            productDto.setCompanyId(product.getCompanyId());
            productDto.setProductTypeId(product.getProductTypeId());
            productDto.setCityId(product.getCityId());
            productDto.setUnitPrice(product.getUnitPrice());
            productDto.setCurrency(product.getCurrency());
            productDto.setBrandId(product.getBrandId());
            productsDto.add(productDto);
        }
        return productsDto;
    }
    public ProductDto createProduct(ProductDto productDto, Transaction transaction) {
        Product product = new Product();
        product.setProductName(productDto.getProductName());
        product.setModel(productDto.getModel());
        product.setProductDescription(productDto.getProductDescription());
        product.setStock(productDto.getStock());
        product.setWeight(productDto.getWeight());
        product.setCompanyId(productDto.getCompanyId());
        product.setProductTypeId(productDto.getProductTypeId());
        product.setCityId(productDto.getCityId());
        product.setUnitPrice(productDto.getUnitPrice());
        product.setCurrency(productDto.getCurrency());
        product.setBrandId(productDto.getBrandId());
        product.setTxId(transaction.getTxId());
        product.setTxUserId(transaction.getTxUserId());
        product.setTxHost(transaction.getTxHost());
        product.setTxDate(transaction.getTxDate());
        product.setStatus(1);
        productDao.create(product);
        Integer getLastId = transactionDao.getLastInsertId();
        productDto.setProductId(getLastId);
        return productDto;
    }
}
