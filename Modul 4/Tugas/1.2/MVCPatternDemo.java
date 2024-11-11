public class MVCPatternDemo {
    public static void main(String[] args) {
        // Inisialisasi model dengan data produk
        Product model = new Product("GeForce GTX 1060Ti", 3000, 10);

        // Inisialisasi view untuk menampilkan data produk
        ProductView view = new ProductView();

        // Inisialisasi controller
        ProductController controller = new ProductController(model, view);

        // Menampilkan informasi produk
        System.out.println("Informasi Produk Awal:");
        controller.displayProductInfo();

        // Melakukan transaksi pembelian
        System.out.println("\nTransaksi Pembelian:");
        controller.handlePurchase();

        // Menampilkan informasi produk setelah transaksi
        System.out.println("\nInformasi Produk Setelah Pembelian:");
        controller.displayProductInfo();
    }
}
