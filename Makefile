up:
	docker compose up

upd:
	docker compose up -d

down:
	docker compose down

sh: upd
	docker compose exec app sh

init:
	docker compose exec app sh -c "geth --datadir /geth/private_net/ init /geth/private_net/genesis.json"

run:
	docker compose exec app sh -c "geth --networkid "15" --nodiscover --datadir "/geth/private_net/" console 2>>/geth/private_net/geth_err.log"
