init:
	docker build docker -t php5.6
	docker run -v `pwd`/html:/var/www/html php5.6 composer create-project --prefer-dist cakephp/app app
	cp -Rp config/app.php html/app/config/app.php

up:
	docker-compose up
