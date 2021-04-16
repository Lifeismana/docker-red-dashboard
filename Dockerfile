FROM phasecorex/user-python:3.8-slim
RUN set -eux; \
# Install Red-DiscordBot dependencies
    apt-get update; \
    apt-get install -y --no-install-recommends \
        # Red-DiscordBot
        build-essential \
        git \
    ; \
    rm -rf /var/lib/apt/lists/*;

RUN set -eux; \
    python -m pip install -U setuptools wheel;\
# Install Red-DiscordBot Dashboard dependencies
    python -m pip install Red-Dashboard;
CMD ["reddash", "--host='127.0.0.1'"]