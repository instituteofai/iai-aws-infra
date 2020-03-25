server {
  listen 80;
  server_name _;

  location / { try_files $uri @objclf; }
  location @objclf {
    include uwsgi_params;
    uwsgi_pass unix:/tmp/objclf.sock;
  }
}