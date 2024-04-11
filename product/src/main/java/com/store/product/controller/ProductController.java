package com.store.product.controller;

import com.store.product.domain.Product;
import com.store.product.repository.ProductRepository;
import com.store.product.service.GenericService;
import com.store.product.service.ProductService;
import io.micrometer.core.instrument.Counter;
import io.micrometer.core.instrument.Gauge;
import io.micrometer.core.instrument.MeterRegistry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Random;
import java.util.stream.IntStream;

@RestController
@RequestMapping("api/product")
public class ProductController extends GenericController<Product> {
    private final ProductRepository productRepository;

    private final MeterRegistry meterRegistry;

    private final Logger logger = LoggerFactory.getLogger(ProductController.class);

    public ProductController(ProductService service, ProductRepository productRepository, MeterRegistry meterRegistry) {
        super(service);
        this.productRepository = productRepository;
        this.meterRegistry = meterRegistry;
    }

//    @Override
//    public ResponseEntity<List<Product>> getAll() {
//        List<Product> list = productRepository.findAll();
//        return (ResponseEntity<List<Product>>) list;
//    }

    @GetMapping("/errors")
    public ResponseEntity<String> getErrors() {
        IntStream.range(0, 100).forEach(i -> {
            int value = new Random().nextInt(100);

            Counter counter = Counter.builder("quantity_of_products_with_error") // Nome da métrica
                                        .tag("quantity_of_products_with_error", "errors") // Mapeamento pelo tipo 'erro'
                                        .description("Quantity of products with error.")
                                        .register(meterRegistry);
            if (value >= 80) {
                logger.error("Invalid value: " +  value);
                counter.increment();
            }
            else {
                logger.info("Valid value: " + value);
            }
        });

        return ResponseEntity.ok("OK");
    }

    @GetMapping("/product_stock_total_quantity")
    public ResponseEntity<String> getProductStockTotalQuantity() {
        Gauge.builder("product_stock_total_quantity", () -> new Random().nextInt(250))
                .description("Shows the quantity of products in stock.")
                .register(meterRegistry);

        return ResponseEntity.ok("OK");
    }
}
