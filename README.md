<h1> Tugas 7 </h1>

<h4>Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter</h4>

1. Stateless Widget:

- Stateless widget adalah widget yang tidak memiliki keadaan internal (state). Ini berarti bahwa setelah tampilan widget telah dibangun, tidak ada perubahan yang dapat dilakukan pada widget tersebut. <br>
- Stateless widget digunakan untuk bagian-bagian tampilan yang tidak perlu berubah seiring waktu, seperti teks statis, ikon, atau gambar. <br>
- Stateless widget lebih efisien daripada stateful widget karena tidak perlu mengelola perubahan keadaan. <br>

2. Stateful Widget:

- Stateful widget adalah widget yang memiliki keadaan internal (state) yang dapat berubah seiring waktu. Keadaan ini bisa diperbarui dan memengaruhi tampilan widget. <br>
- Stateful widget digunakan untuk bagian-bagian tampilan yang perlu merespons interaksi pengguna atau perubahan data, seperti tombol yang dapat diklik, formulir yang dapat diisi, dan daftar item yang dapat diperbarui. <br>
- Stateful widget lebih fleksibel karena dapat merespons perubahan keadaan dan mengupdate tampilan sesuai dengan perubahan tersebut. <br>

<h4> Widget </h4>
- MyHomePage (Widget utama yang merupakan StatelessWidget) <br>
- Scaffold (Mengatur tampilan dasar aplikasi) <br>
- AppBar (Bar atas aplikasi) <br>
- SingleChildScrollView (Widget wrapper yang dapat di-scroll) <br>
- Padding (Widget untuk memberi padding) <br>
- Column (Mengatur children secara vertikal) <br>
- Text (Widget untuk menampilkan teks) <br>
- GridView.count (Grid layout) <br>
- ShopCard (Widget untuk menampilkan kartu toko) <br>
- Material (Untuk mengatur warna latar belakang) <br>
- InkWell (Area responsif terhadap sentuhan) <br>
- Container (Widget untuk menyimpan ikon dan teks) <br>
- Icon (Widget untuk menampilkan ikon) <br>
- SnackBar (Untuk menampilkan pesan ketika item diklik) <br>
- MyApp (Kelas widget utama yang mewarisi StatelessWidget). <br>
- MaterialApp (Widget yang digunakan untuk mengkonfigurasi dan mengatur tema aplikasi). <br>
- ColorScheme (Widget yang digunakan untuk mengatur skema warna aplikasi). <br>
- useMaterial3 (Widget untuk mengaktifkan atau menonaktifkan Material You). <br>

<h4> Steps </h4>

1. Pertama saya merapikan struktur proyek saya dengan mengimport material.dart, lalu memindahkan class MyHomePage dan _MyHomePageState ke menu.dart serta mengimport menu.dart pada main.dart
2. Lalu saya mengubah sifat mygomepage menjadi stateless
3. Lalu saya mendefine tipe pada list dengan membuat class ShopItem yang memiliki atribut name, icon, 
4. Lalu menambahkan barang-barang di class MyHomePage
5. Kemudian mengatur tampilan utama aplikkasi dengan judul toko, grid item toko, dan berbagai widget lainnya
6. Lalu membuat class ShopCard yang dgunakan untuk membuat kartu yang menampilkan item toko dengan ikon, teks, dan interaksinya