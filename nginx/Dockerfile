# Menggunakan image nginx sebagai dasar
FROM nginx:latest

# Menyalin file nginx.conf ke dalam container
COPY nginx.conf /etc/nginx/nginx.conf

# Menyalin direktori sites-available dan sites-enabled ke dalam container
COPY sites-available /etc/nginx/sites-available
COPY sites-enabled /etc/nginx/sites-enabled

# Menyalin skrip init-nginx.sh ke dalam container
COPY init-nginx.sh /init-nginx.sh

# Memberikan izin eksekusi untuk skrip init-nginx.sh
RUN chmod +x /init-nginx.sh

# Menjalankan skrip init-nginx.sh saat container dijalankan
ENTRYPOINT ["/init-nginx.sh"]
