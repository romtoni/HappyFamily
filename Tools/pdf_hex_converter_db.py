import argparse
import psycopg2

def connect_db():
    return psycopg2.connect(
        dbname="db_happy_family",
        user="postgres",
        password="admin123",
        host="localhost"
    )

def insert_pdf_to_db(file_path, nama_file, kd_dokumen, kd_member):
    try:
        with open(file_path, "rb") as f:
            binary_data = f.read()

        conn = connect_db()
        cur = conn.cursor()
        cur.execute("""
            INSERT INTO TM_MEMBER_DOKUMEN (binary_file, kd_dokumen, kd_member)
            VALUES (%s, %s, %s)
        """, (psycopg2.Binary(binary_data), kd_dokumen, kd_member))
        conn.commit()

        print(f"Sukses! File '{nama_file}' dimasukkan ke database dengan kd_dokumen={kd_dokumen} dan kd_member={kd_member}.")
        cur.close()
        conn.close()
    except Exception as e:
        print("Gagal insert ke database:", e)

def fetch_pdf_from_db(id, output_path):
    try:
        conn = connect_db()
        cur = conn.cursor()
        cur.execute("""
            SELECT binary_file FROM TM_MEMBER_DOKUMEN
            WHERE id = %s
        """, (id,))
        row = cur.fetchone()
        cur.close()
        conn.close()

        if row and row[0]:
            with open(output_path, "wb") as f:
                f.write(row[0])
            print(f"Sukses! File PDF disimpan sebagai '{output_path}'")
        else:
            print("Data tidak ditemukan atau kosong.")
    except Exception as e:
        print("Gagal ambil file dari database:", e)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Insert dan Fetch PDF dari PostgreSQL")
    subparsers = parser.add_subparsers(dest="mode", required=True)

    insert_parser = subparsers.add_parser("insert", help="Insert PDF ke DB")
    insert_parser.add_argument("file", help="Path ke file PDF")
    insert_parser.add_argument("nama", help="Nama file yang akan disimpan di DB")
    insert_parser.add_argument("kd_dokumen", help="Kode dokumen")
    insert_parser.add_argument("kd_member", help="Kode member")

    fetch_parser = subparsers.add_parser("fetch", help="Ambil PDF dari DB")
    fetch_parser.add_argument("id", type=int, help="ID dokumen di database")
    fetch_parser.add_argument("output", help="Path output file PDF")

    args = parser.parse_args()

    if args.mode == "insert":
        insert_pdf_to_db(args.file, args.nama, args.kd_dokumen, args.kd_member)

    elif args.mode == "fetch":
        fetch_pdf_from_db(args.id, args.output)
