public class Product {
    private String name;
    private int price;
    private int stock;

    public Product(String name, int price, int stock) {
        this.name = name;
        this.price = price;
        this.stock = stock;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int calculateTotalPrice(int quantity) {
        return quantity * price;
    }

    public boolean isStockAvailable(int quantity) {
        return stock >= quantity;
    }

    public void reduceStock(int quantity) {
        stock -= quantity;
    }
}
