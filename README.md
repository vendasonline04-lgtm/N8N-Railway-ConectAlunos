# N8N no Railway — Simplifica.ai

Este repositório sobe o N8N self-hosted no Railway, conectado ao Supabase.

## Como fazer o deploy

### 1. Fork ou clone este repositório no seu GitHub

### 2. No Railway
- New Project → Deploy from GitHub repo
- Selecione este repositório
- Adicione um banco PostgreSQL: New Service → Database → PostgreSQL

### 3. Configure as variáveis de ambiente
No Railway → seu serviço N8N → Variables, adicione todas as variáveis do `.env.example` com seus valores reais.

> ⚠️ NUNCA suba o `.env` com dados reais para o GitHub. Use apenas o `.env.example`.

### 4. Gere o domínio público
Railway → seu serviço → Settings → Networking → Generate Domain

Copie a URL gerada e cole em:
- `N8N_HOST` (sem o https://)
- `WEBHOOK_URL` (com o https://)

### 5. Redeploy
Railway → seu serviço → Deploy → Redeploy

O N8N vai estar disponível na URL pública gerada.

## Estrutura
```
n8n-railway/
├── Dockerfile        # Imagem oficial do N8N + fuso horário BR
├── railway.toml      # Configuração do Railway
├── .env.example      # Variáveis necessárias (sem valores reais)
└── README.md         # Este arquivo
```
