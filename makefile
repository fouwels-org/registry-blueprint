# SPDX-FileCopyrightText: 2022 Kaelan Thijs Fouwels <kaelan.thijs@fouwels.com>
#
# SPDX-License-Identifier: MIT

COMPOSE=docker compose
STACK= -f registry.yml -f gateway.yml

.PHONY: pull, up, up-d, down, logs

# Docker
pull:
	$(COMPOSE) $(STACK) pull
up: 
	$(COMPOSE) $(STACK) up
up-d: 
	$(COMPOSE) $(STACK) up -d
down:
	$(COMPOSE) $(STACK) down
logs:
	$(COMPOSE) $(STACK) logs -f