# SPDX-FileCopyrightText: 2021 Kaelan Thijs Fouwels <kaelan.thijs@fouwels.com>
#
# SPDX-License-Identifier: MIT

COMPOSE=docker compose
STACK= -f postgres.yml

.PHONY: pull, up, up-d, down, logs, certbot-request, certbot-renew, certbot-nginx

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