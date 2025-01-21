

setup-git:
	@echo "setup git for ucloud"

install-uv:
	@echo "installs uv"
	# only works for linux and mac
	curl -LsSf https://astral.sh/uv/install.sh | sh

install-dependencies:
	@echo "installing dependencies"
	uv sync

run-project:
	@echo "running the analysis"
	uv run hello.py

setup-on-cloud:
	make install-uv
	make setup-git
	make install-dependencies
	make run-project