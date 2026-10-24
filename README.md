# Zentry IA

IA de código aberto para **controle de acesso**. Monitora catracas e faciais (Control iD / iDSecure) em tempo real, detecta riscos e falhas, **aprende** com o que vê, trabalha **online ou offline**, **fala** e **entende comandos de voz**, e conversa com você sobre os dados. Roda no seu PC, com painel futurista no navegador.

> O Zentry só **observa**. Ele nunca libera nem bloqueia acessos: o equipamento continua em modo autônomo.

## Instalar
- **Windows:** baixe `ZentryIA-Setup-x.y.z.exe` (Releases) e siga o assistente. Ele cria o banco de dados e abre o painel. Veja [docs/instalacao.md](docs/instalacao.md).
- **Do código-fonte:** `python -m zentry setup` e `python -m zentry run --open` (só Python 3.9+, sem dependências).
- **Testar sem equipamentos:** `python -m zentry simulate --serve` (usuário `demo`, senha `zentry-demo`).

## O que tem
| Área | O que faz |
|---|---|
| Centro de comando | Saúde da operação, fluxo 24 h, mapa de calor 4 semanas, alertas, equipamentos |
| 12 detectores | Equipamento offline/silencioso, relógio, leitora degradando, porta aberta, força bruta, excesso de negações, viagem impossível, horário atípico, anti-passback, credenciais inativas, divergência catraca (carona, giro forçado, liberação sem giro) |
| Aprendizado | Alerta igual a um já conhecido é ignorado; algo novo é aprendido e avisado |
| Conversa e voz | Fale “Zentry, …” ou digite. Com chave da API da Anthropic usa Claude (nomes pseudonimizados); sem internet usa regras locais. Alertas críticos podem ser falados nas caixas do PC |
| Segurança | Contas (leitura/operador/admin), senhas PBKDF2, sessões, CSRF, limite de tentativas, auditoria |
| Atualização | Aviso “Atualização disponível” no painel, com novidades; no Windows baixa, confere e instala com um clique ([docs/atualizacoes.md](docs/atualizacoes.md)) |
| Operação | Configuração pela interface, backup diário, retenção, diagnóstico, relatórios HTML/Markdown |
| Marcas | Control iD, Hikvision, Intelbras, Dahua, Axis, ZKTeco e receptor genérico — veja [docs/conectores.md](docs/conectores.md) |
| Avisos | Console, voz do PC, Telegram, ntfy (celular), webhook e e-mail, com fila offline |
| Extensível | Plugins de detector em `plugins/`, conectores por marca em `zentry/connectors/` |

## Desenvolvimento
`python -m unittest discover -s tests` · [Arquitetura](docs/arquitetura.md) · [Criar detectores](docs/detectores.md) · [Contribuir](CONTRIBUTING.md) · [Segurança](SECURITY.md) · [Changelog](CHANGELOG.md)

## Limitações conhecidas
- Todas as integrações de marcas seguem documentação pública e **precisam ser validadas em equipamento real**. Use *Diagnóstico → Últimos envios dos equipamentos* para conferir o que chega.
- O painel usa HTTP por padrão; ligue o HTTPS em *Configurações → Geral* (ou use VPN) fora da rede local.
- O reconhecimento de voz depende do navegador (Chrome/Edge), que normalmente usa um serviço online.

Licença MIT.
