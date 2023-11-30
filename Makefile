setup:
	docker-compose build

docker-up:
	docker-compose up -d
	sleep 5
	docker-compose exec myapp /bin/bash

docker-down:
	docker-compose down

streamlit-run:
	streamlit run ./app/main.py
