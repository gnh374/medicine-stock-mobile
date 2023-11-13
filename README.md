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

<h1> Tugas 8 </h2>

<h4>  perbedaan antara Navigator.push() dan Navigator.pushReplacement() </h4>

1. Navigator.push() digunakan untuk menambahkan halaman baru ke tumpukan (stack) halaman yang ada. Ini berarti halaman sebelumnya tetap ada dalam tumpukan navigasi. Berguna jika ingin bisa kembali ke halaman sebelumnya
2. Navigator.pushReplacement() menggantikan halaman saat ini dalam tumpukan dengan halaman baru. Halaman sebelumnya dihapus dari tumpukan.
<br>
Contoh, pada tugas ini jika kita pergi ke halaman tambah item dari drawer, karena menggunakan pushreplacement, kita tidak bisa kembali halaman sebelumnya dengan tombol back, sedangkan jika kita pergi ke halaman tambah item dengan menggunakan button tambah item, kita bisa kembali ke homepage karena menggunakan metode push

<h4>Layout widget pada Flutter dan konteks penggunaannya masing-masing </h4>

1. Container = untuk mengatur tampilan dan tata letak elemen. Dipakai untuk ngatur padding,margin, border. Berupa wadah untuk diisi dengan child widget
2. Row = untuk ngatur elemen-elemen secara horizontal
3. Column = untuk mengatur tata letak elemen secara vertikal
4. Stack = elemen ditumpuk berlapis satu sama lain
5. ListView = untuk menampilkan daftar elemen yang bisa discroll
6. GridView = untuk menampilkan elemen dalam bentuk grid (kotak)
7. Wrap = untuk menata elemen dalam baris-baris atau kolom-kolom secara otomatis.

<h4> Tipe input yang digunakan pada form </h4>
Menggunakan TextFormField untuk menerima input nama berupa string, amount berupa integer dan description berupa string. Penggunaan TextFormField karena saya ingin menerima input berupa text yang nantinya akan dilakukan validasi sesuai ketentuan

<h4> Penerapan clean architecture pada aplikasi Flutter </h4>
membantu dalam pemisahan tanggung jawab dan membuat kode lebih terstruktur. Dilakukan dengan cara memindahkan kode berdasarkan fungsinya, misalnya pada folder screens, widgets. Ada 3 lapisan utama:

1. Domain layer(core) : lapisan inti yang berisi aturan bisnis, entitas, dan objek nilai (value objects)
2. Repository/Use Case Layer : Lapisan ini berfungsi sebagai penghubung antara lapisan domain dan lapisan data (external)
3. Presentation Layer: Ini adalah lapisan yang bertanggung jawab untuk antarmuka pengguna dan tata letak (UI/UX) 

<h4> Steps </h4>

1. Saya membuat drawer  dengan membuat berkas left_drawer.dart pada folder widgets. Pada berkas itu, saya membuat widget leftdrawer yang dibangun dari widget drawer. Saya mengatur tampilan dari drawer serta isinya dan routingnya. Kemudian saya memasukkan drawer ke halaman menu.dart agar drawer ditampilkan pada homepage.
2. Pada berkas lib, saya membuat file modeicine_form.dart yang akan menjadi halaman form. Saya membuat kelas state juga yang akan berisi widget-widget yang akan membagun form. Saya mengatur tampilan header dan juga input serta memvalidasi inpur dari form di sini. Lalu saya membuat button yang jika ditekan akan menampilkan data yang diinput.
3. Selanjutnya saya mengatur navigasi untuk tombol tambah item, agar saat dipencet akan ditampilkan halaman form