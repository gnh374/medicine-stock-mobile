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

<h1> Tugas 8 </h1>

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

<h1> Tugas 9</h1>
<h4>  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? </h4>

Ya, pengambilan data JSON dapat dilakukan tanpa membuat model terlebih dahulu di Flutter. Untuk melakukannya, Anda dapat menggunakan fungsi jsonDecode() dari package dart:convert. Fungsi ini akan mengubah data JSON menjadi objek Map <String, dynamic> <br>
Keuntungan:

1. Lebih mudah untuk memulai
2. Lebih cepat untuk implementasikan
3. Lebih portabel
<br>
Kerugian:

1. Lebih sulit untuk membaca dan dipelihara
2. Kurang fleksibel
3. Kurang efisien
<br>
Jika data JSON yang Anda ambil memiliki struktur yang sederhana, maka tidak ada masalah untuk mengambilnya tanpa membuat model. Namun, jika data JSON yang Anda ambil memiliki struktur yang kompleks, maka membuat model akan membuat kode Anda lebih mudah dibaca dan dipelihara.

<h4> Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter</h4>
CookieRequest adalah sebuah kelas yang digunakan untuk mengelola cookie dalam permintaan HTTP. Kelas ini menyediakan metode untuk menambahkan, menghapus, dan memeriksa cookie.
<br>
Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter agar setiap komponen dapat mengakses cookie yang sama. Hal ini diperlukan karena cookie sering digunakan untuk menyimpan informasi login pengguna, informasi preferensi pengguna, dan informasi lainnya yang perlu dipertahankan di seluruh aplikasi.

<h4> Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter </h4>

1. Melalakukan fetching data menggunakan http untuk menhgambil data dari server dengann format json 
2. Kemudian response ini diconvert menjadi json
3. Lalu tampilkan di flutter

<h4> Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter </h4>

1. Pengguna memasukkan data akun pada flutter. Data ini akan dikirimkan ke server django
2. Django menerima data akun dari flutter melalui API. API ini menggunakan metode HTTP POST untuk mengirimkan data akun.

3. Django memvalidasi data akun untuk memastikan bahwa data tersebut valid. Validasi ini dilakukan dengan memeriksa apakah username dan password yang dimasukkan sesuai dengan data akun yang tersimpan di database.

4. Django mengembalikan hasil validasi ke Flutter. Jika data akun valid, Django akan mengembalikan kode status HTTP 200. Jika data akun tidak valid, Django akan mengembalikan kode status HTTP 401.

5. Flutter menerima hasil validasi dari Django. Flutter menerima hasil validasi dari Django. Jika kode status HTTP adalah 200, maka autentikasi berhasil. Jika kode status HTTP adalah 401, maka autentikasi gagal.

6. Flutter menampilkan menu jika autentikasi berhasil. Jika autentikasi berhasil, Flutter akan menampilkan menu. Menu ini dapat berupa tampilan halaman, tombol, atau widget lainnya.  

<h4> Seluruh widget pada tugas ini </h4>

1. Scaffold: Widget dasar yang menyediakan struktur aplikasi, termasuk app bar, drawer, dan body.

2. AppBar: Widget untuk membuat app bar di bagian atas layar.

3. LeftDrawer: Widget untuk membuat drawer di sisi kiri layar. Drawer ini digunakan untuk navigasi ke layar lain dalam aplikasi.

4. FutureBuilder: Widget untuk membangun widget berdasarkan hasil operasi asinkron. 

5. Center: Widget untuk memusatkan widget anak di tengah layar

6. Column: Widget untuk menyusun widget anak secara vertikal. Dalam kasus ini

7. Text: Widget untuk menampilkan teks. Dalam kasus ini

8. SizedBox: Widget untuk menambahkan ruang kosong di antara widget anak. 

9. ListView.builder: Widget untuk membangun daftar item secara efisien. 

10. Container: Widget untuk menampung widget anak dan menerapkan padding dan margin. .

11. InkWell: Widget untuk membuat widget anak dapat disentuh. 

12. ElevatedButton: Widget ElevatedButton membuat tombol dengan tampilan yang menonjol. 

13. Padding: Widget Padding memastikan bahwa konten tidak langsung berdekatan dengan tepi layar.

<h4> Steps </h4>

1. Pertama saya melakukan setup autentikasi pada django untuk flutter. Saya membuat app baru bernama authentication lalu menginstal library yang dibutuhkanlalu melakukan set up settings.py yang dibutuhkan. Saya juga membuat method pada autentication/views.py yang akan menangani permintaan login dan mengautentitkasi pengguna dan mengembalikan respons JSON yang sesuai berdasarkan hasilnya.  Lalu saya mengatur routingnya
2. Kemudian saya menginstall package yang dibutuhkan untuk melakukan integrasi sistem autentikasi pada flutter. Lalu mengatur root widget agar menyediakan cookierequest ke semua childnya. Kemudian saya membuat file baru bernama login.dart yang menangani user yang akan login dan jika sukses akan di direct ke homepage. Lalu mengubah agar sasat pertama dibuka tampilan yang muncul adalah loginpage bukakn homepage
3. Lalu membuat model kustom
4. Kemudian saya membuay list_product.dart dan melakukan fetch data dari django untuk ditampilkan di flutter. Pertama menginstal package yang dibutuhkan yaitu http, lalu memperbolehkan akses internet. Kemudian melakukan fetching data dengan fetchProduct(). Kemudian pada shop_card.dart dibuat agar saat diklik mengarah ke ProductPage()
5. Kemudian saya melakukan  integrasi form flutte degan layaan django. Pertama membuat fungsi baru pada views.py di  djangoyang mengembalikan json response saat menerima method post, lalu mengatur urlnya.Lalu mengubah medicine_form.dart menjadi saat di klik melakukakan fetching ke views yang baru dibuat.
6. Mengimplementasikan fitur logout. membuat fungsi baru pada authentication/views.py yang mengembalikan jsonrespons tergantung berhasil logouuta atau tidak, mengatur urlnya. Lalu mengatur jika tombol logout di klik akan melakukan fetching ke url tadi
7. Kemudian menggubah list_product.dart menjadi hanya menamoilkan naama product dan saat dipencet akan dibawa ke halaman lain. Halaman ini dibuat pada medicinedetail.dart yang menampikan detail dari setiap obat yang dipencet dan ada tombol untuk kembali