public class ProductView {
    public void displayProductDetails(String name, int price, int stock) {
        System.out.println("Nama Barang : " + name);
        System.out.println("Harga Barang : " + price);
        System.out.println("Stok Barang : " + stock);
    }

    public void displayTotalPayment(int totalPayment) {
        System.out.println("Jumlah Bayar : " + totalPayment);
    }

    public void displayStockError() {
        System.out.println("Stok tidak mencukupi.");
    }

    public void promptQuantity() {
        System.out.print("Jumlah barang yang dibeli: ");
    }
}
