class Pasien {
  late int id; // Properti untuk menyimpan ID pasien (late keyword menandakan bahwa nilainya akan ditetapkan nanti sebelum digunakan).
  late String nama; // Properti untuk menyimpan nama pasien.
  late String nomor_rm; // Properti untuk menyimpan nomor rekam medis pasien.
  late String tanggal_lahir; // Properti untuk menyimpan tanggal lahir pasien.
  late String nomor_telepon; // Properti untuk menyimpan nomor telepon pasien.
  late String alamat; // Properti untuk menyimpan alamat pasien.

  Pasien(Map pasien) {
    // Konstruktor kelas Pasien yang menerima sebuah Map bernama "pasien".
    id = pasien[
        'id']; // Mengassign nilai dari kunci 'id' dalam map "pasien" ke properti "id".
    nama = pasien[
        'nama']; // Mengassign nilai dari kunci 'nama' dalam map "pasien" ke properti "nama".
    nomor_rm = pasien[
        'nomor_rm']; // Mengassign nilai dari kunci 'nomor_rm' dalam map "pasien" ke properti "nomor_rm".
    tanggal_lahir = pasien[
        'tanggal_lahir']; // Mengassign nilai dari kunci 'tanggal_lahir' dalam map "pasien" ke properti "tanggal_lahir".
    nomor_telepon = pasien[
        'nomor_telepon']; // Mengassign nilai dari kunci 'nomor_telepon' dalam map "pasien" ke properti "nomor_telepon".
    alamat = pasien[
        'alamat']; // Mengassign nilai dari kunci 'alamat' dalam map "pasien" ke properti "alamat".
  }
}
