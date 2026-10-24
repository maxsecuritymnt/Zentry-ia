# Segurança

Encontrou uma falha? **Não abra uma issue pública.** Envie os detalhes em particular ao mantenedor do repositório (aba *Security → Report a vulnerability* do GitHub).

Pontos importantes do projeto:
- O Zentry só **observa**: nunca libera nem bloqueia acessos.
- O painel usa HTTP puro. Em rede local é aceitável; fora dela use VPN ou um proxy reverso com HTTPS.
- A chave da API de IA e a chave de integração ficam em `config.json` (somente leitura para o dono do arquivo) e nunca são exibidas na interface.
- Com a conversa por IA ligada, nomes de pessoas são trocados por códigos antes do envio (padrão).
