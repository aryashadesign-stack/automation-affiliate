# Gunakan image resmi n8n
FROM n8nio/n8n:latest

# Tentukan timezone
ENV GENERIC_TIMEZONE=Asia/Jakarta

# Aktifkan login sederhana
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Port dan protokol default
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Ganti sesuai URL Render kamu
ENV WEBHOOK_TUNNEL_URL=https://automation-affiliate.onrender.com/

# Expose port
EXPOSE 5678

# Jalankan n8n
CMD ["n8n"]
