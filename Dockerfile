# OpenAI Bridge MCP Server - Docker Image
# Bridge to OpenAI API
#
# Build: docker build -t mcp-server-openai-bridge .
# Run:   docker run -i -e OPENAI_API_KEY=sk-... mcp-server-openai-bridge
#
# Part of HumoticaOS/SymbAIon - https://humotica.com

FROM python:3.11-slim

LABEL maintainer="Jasper van de Meent <info@humotica.com>"
LABEL org.opencontainers.image.source="https://github.com/jaspertvdm/mcp-server-openai-bridge"
LABEL org.opencontainers.image.description="OpenAI Bridge - Connect MCP to OpenAI API"
LABEL org.opencontainers.image.licenses="MIT"

# Install from PyPI
RUN pip install --no-cache-dir mcp-server-openai-bridge

# API key must be provided at runtime
# docker run -i -e OPENAI_API_KEY=sk-... mcp-server-openai-bridge

# MCP servers communicate via stdio
ENTRYPOINT ["mcp-server-openai-bridge"]
