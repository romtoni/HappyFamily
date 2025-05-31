import argparse

def pdf_to_hex(file_path):
    try:
        with open(file_path, "rb") as pdf_file:
            binary_data = pdf_file.read()
            return binary_data.hex()
    except Exception as e:
        print("Gagal konversi PDF ke hex:", e)
        return None

def hex_to_pdf(hex_string, output_path):
    try:
        binary_data = bytes.fromhex(hex_string)
        with open(output_path, "wb") as pdf_file:
            pdf_file.write(binary_data)
        print("Sukses! PDF disimpan sebagai:", output_path)
    except Exception as e:
        print("Gagal konversi hex ke PDF:", e)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Konversi PDF <-> HEX")
    parser.add_argument("mode", choices=["tohex", "topdf"], help="Mode konversi: tohex (PDF ke HEX) atau topdf (HEX ke PDF)")
    parser.add_argument("input", help="File input (PDF atau file HEX)")
    parser.add_argument("output", help="File output (file HEX atau PDF)")

    args = parser.parse_args()

    if args.mode == "tohex":
        hex_data = pdf_to_hex(args.input)
        if hex_data:
            with open(args.output, "w") as f:
                f.write(hex_data)
            print(f"Sukses! HEX disimpan di: {args.output}")

    elif args.mode == "topdf":
        try:
            with open(args.input, "r") as f:
                hex_str = f.read()
            hex_to_pdf(hex_str, args.output)
        except Exception as e:
            print("Gagal membaca file HEX:", e)
