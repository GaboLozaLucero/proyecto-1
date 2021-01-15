package bo.ucb.edu.ingsoft.dto;

import bo.ucb.edu.ingsoft.model.Transaction;

import javax.validation.constraints.*;
import java.util.Date;

public class ProductDto {
    private Integer productId;
    @NotNull(message = "Empty Field")
    @Min(value = 1)
    @Max(value = 11)
    private Integer productTypeId;
    @NotNull(message = "Empty Field")
    @Min(value = 1)
    @Max(value = 11)
    private Integer brandId;
    @NotNull(message = "Empty Field")
    @Min(value = 1)
    @Max(value = 5)
    private Integer companyId;
    @NotNull(message = "Empty field")
    @Min(value = 1)
    @Max(value = 5)
    private Integer cityId;

    @NotBlank(message = "Empty Field")
    private String productName;
    @NotBlank(message = "Empty Field")
    private String model;
    @NotBlank(message = "Empty Field")
    private String productDescription;
    @NotNull(message = "Empty Field")
    @Positive(message = "Invalid stock")
    private Integer stock;
    @NotNull(message = "Empty Field")
    @Positive(message = "Invalid weight")
    private Double weight;
    @NotBlank(message = "Empty Field")
    private String img;
    @NotNull(message = "Empty Field")
    @Positive(message = "Invalid price")
    private Double pricePerUnit;
    @NotNull(message = "Empty Field")
    @Min(value = 1)
    @Max(value = 2)
    private Integer currency;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getProductTypeId() {
        return productTypeId;
    }

    public void setProductTypeId(Integer productTypeId) {
        this.productTypeId = productTypeId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Double getPricePerUnit() {
        return pricePerUnit;
    }

    public void setPricePerUnit(Double pricePerUnit) {
        this.pricePerUnit = pricePerUnit;
    }

    public Integer getCurrency() {
        return currency;
    }

    public void setCurrency(Integer currency) {
        this.currency = currency;
    }
}
