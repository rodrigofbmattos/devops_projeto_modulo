package com.store.product.service.implement;

import com.store.product.domain.Product;
import com.store.product.repository.ProductRepository;
import com.store.product.service.ProductService;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImplements extends GenericServiceImplements<Product, Long, ProductRepository> implements ProductService {
    public ProductServiceImplements(ProductRepository repository) {
        super(repository);
    }

    @Override
    public void save(Product product) {
        System.out.println("Método Save do Product.");
        repository.save(product);
    }
}
