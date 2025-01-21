

setup-git:
	@echo "setup git for ucloud"
	git config --global user.email "you@example.com"
	git config --global user.name "sarah (ucloud)"

install-uv:
	@echo "installs uv"
	# only works for linux and mac
	curl -LsSf https://astral.sh/uv/install.sh | sh

install-dependencies:
	@echo "installing dependencies in"
	uv sync

run-project:
	@echo "running the analysis"
	uv run hello.py

setup-on-cloud:
	make install-uv
	make setup-git
	make install-dependencies
	make run-project