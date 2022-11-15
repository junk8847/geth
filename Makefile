up:
	docker compose up

upd:
	docker compose up -d

sh: upd
	docker compose exec app sh
