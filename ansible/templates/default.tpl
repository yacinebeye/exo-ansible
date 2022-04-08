
server {
	listen 80 default_server;
	listen [::]:80 default_server;


	root /var/www/{{ website_name }};

	index index.html index.htm index.nginx-debian.html;

	server_name_;

	location / {
		try_files $uri $uri/ =404;
	}

}



