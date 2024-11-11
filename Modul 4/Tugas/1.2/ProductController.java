import java.util.Scanner;

public class ProductController {
    private Product model;
    private ProductView view;

    public ProductController(Product model, ProductView view) {
        this.model = model;
        this.view = view;
    }

    public void displayProductInfo() {
        view.displayProductDetails(model.getName(), model.getPrice(), model.getStock());
    }

    public void handlePurchase() {
        Scanner scanner = new Scanner(System.in);
        view.promptQuantity();
        int quantity = scanner.nextInt();

        if (model.isStockAvailable(quantity)) {
            int totalPayment = model.calculateTotalPrice(quantity);
            model.reduceStock(quantity);
            view.displayTotalPayment(totalPayment);
        } else {
            view.displayStockError();
        }
    }
}
