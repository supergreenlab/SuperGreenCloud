add_header 'Access-Control-Allow-Origin' '*' always;
add_header 'Access-Control-Allow-Methods' 'GET, OPTIONS' always;
add_header 'Access-Control-Allow-Headers' 'User-Agent,Keep-Alive,Content-Type' always;
add_header 'Access-Control-Expose-Headers' 'Content-Length,Content-Range' always;
client_max_body_size 100M;
