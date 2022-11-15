up:
	docker compose up

upd:
	docker compose up -d

sh: upd
	docker compose exec app sh

init:
	docker compose exec app sh -c "geth --datadir /geth/private_net/ init /geth/private_net/genesis.json"
