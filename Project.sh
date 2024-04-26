#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Invalid syntax!"
    echo ""
    echo "Syntax : ./Project.sh <file_name> <Conversion type>"
    echo ""
    echo "Supported conversion types:"
    echo ""
    echo "  bmp_to_jpeg, bmp_to_jpg, bmp_to_tiff, bmp_to_png, bmp_to_webp, bmp_to_gif, bmp_to_heif,"
    echo "  jpeg_to_bmp, jpeg_to_jpg, jpeg_to_tiff, jpeg_to_png, jpeg_to_webp, jpeg_to_gif, jpeg_to_heif,"
    echo "  jpg_to_bmp, jpg_to_jpeg, jpg_to_tiff, jpg_to_png, jpg_to_webp, jpg_to_gif, jpg_to_heif,"
    echo "  tiff_to_bmp, tiff_to_jpeg, tiff_to_jpg, tiff_to_png, tiff_to_webp, tiff_to_gif, tiff_to_heif,"
    echo "  png_to_bmp, png_to_jpeg, png_to_jpg, png_to_tiff, png_to_webp, png_to_gif, png_to_heif,"
    echo "  webp_to_bmp, webp_to_jpeg, webp_to_jpg, webp_to_tiff, webp_to_png, webp_to_gif, webp_to_heif,"
    echo "  gif_to_bmp, gif_to_jpeg, gif_to_jpg, gif_to_tiff, gif_to_png, gif_to_webp, gif_to_heif,"
    echo "  heif_to_bmp, heif_to_jpeg, heif_to_jpg, heif_to_tiff, heif_to_png, heif_to_webp, heif_to_gif"
    echo ""
    exit 1
fi

INPUT_FILE="$1"
CONVERSION_TYPE="$2"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found."
    echo ""
    exit 1
fi

file_type=$(file -b --mime-type "$INPUT_FILE")
case "$CONVERSION_TYPE" in
    bmp_to_jpeg|bmp_to_jpg|bmp_to_tiff|bmp_to_png|bmp_to_webp|bmp_to_gif|bmp_to_heif)
        if [ "$file_type" != "image/bmp" ]; then
            echo "Error: Input file is not a BMP file."
            echo ""
            exit 1
        fi
        ;;
    jpeg_to_bmp|jpeg_to_jpg|jpeg_to_tiff|jpeg_to_png|jpeg_to_webp|jpeg_to_gif|jpeg_to_heif)
        if [ "$file_type" != "image/jpeg" ]; then
            echo "Error: Input file is not a JPEG file."
            echo ""
            exit 1
        fi
        ;;
    jpg_to_bmp|jpg_to_jpeg|jpg_to_tiff|jpg_to_png|jpg_to_webp|jpg_to_gif|jpg_to_heif)
        if [ "$file_type" != "image/jpg" ]; then
            echo "Error: Input file is not a JPG file."
            echo ""
            exit 1
        fi
        ;;
    tiff_to_bmp|tiff_to_jpeg|tiff_to_jpg|tiff_to_png|tiff_to_webp|tiff_to_gif|tiff_to_heif)
        if [ "$file_type" != "image/tiff" ]; then
            echo "Error: Input file is not a TIFF file."
            echo ""
            exit 1
        fi
        ;;
    png_to_bmp|png_to_jpeg|png_to_jpg|png_to_tiff|png_to_webp|png_to_gif|png_to_heif)
        if [ "$file_type" != "image/png" ]; then
            echo "Error: Input file is not a PNG file."
            echo ""
            exit 1
        fi
        ;;
    webp_to_bmp|webp_to_jpeg|webp_to_jpg|webp_to_tiff|webp_to_png|webp_to_gif|webp_to_heif)
        if [ "$file_type" != "image/webp" ]; then
            echo "Error: Input file is not a WebP file."
            echo ""
            exit 1
        fi
        ;;
    gif_to_bmp|gif_to_jpeg|gif_to_jpg|gif_to_tiff|gif_to_png|gif_to_webp|gif_to_heif)
        if [ "$file_type" != "image/gif" ]; then
            echo "Error: Input file is not a GIF file."
            echo ""
            exit 1
        fi
        ;;
    heif_to_bmp|heif_to_jpeg|heif_to_jpg|heif_to_tiff|heif_to_png|heif_to_webp|heif_to_gif)
        if [ "$file_type" != "image/heif" ]; then
            echo "Error: Input file is not a HEIF file."
            echo ""
            exit 1
        fi
        ;;
    *)
        echo "Error: Unsupported conversion type '$CONVERSION_TYPE'"
        echo ""
        exit 1
        ;;
esac

OUTPUT_FILE="${INPUT_FILE%.*}.$(echo "$CONVERSION_TYPE" | cut -d '_' -f 3)"

if [ -f "$OUTPUT_FILE" ]; then
    echo "Error: Output file '$OUTPUT_FILE' already exists. Choose a different output filename."
    echo ""
    exit 1
fi

case "$CONVERSION_TYPE" in
    bmp_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    bmp_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_jpg)
        cp "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpeg_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_jpeg)
        cp "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    jpg_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    gif_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    heif_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    tiff_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_png)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    webp_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_bmp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_jpeg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_jpg)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_tiff)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_webp)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_gif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    png_to_heif)
        convert "$INPUT_FILE" "$OUTPUT_FILE"
        ;;
    *)
        echo "Error: Unsupported conversion type '$CONVERSION_TYPE'"
        echo ""
        exit 1
        ;;
esac

if [ $? -eq 0 ]; then
    echo "Conversion successful: $OUTPUT_FILE"
    echo ""
else
    echo "Error: Conversion failed for '$CONVERSION_TYPE'."
    echo ""
fi