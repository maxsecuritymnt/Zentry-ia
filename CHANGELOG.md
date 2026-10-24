# Changelog

## 0.9.0
- Equipamentos → "📷 Câmera / SIP" (Control iD iDFace): imagem da câmera ao vivo (colorida/infravermelho), endereço RTSP com botão para ligar o vídeo, e interfone SIP (configurar servidor/ramal, ligar, encerrar). Não validado em equipamento real; SIP exige licença PRO.

## 0.8.2
- "Ao vivo": excluir um evento (✕) ou apagar todos os eventos do cliente (só administrador; exige confirmação e fica na auditoria).

## 0.8.1
- Relógio desajustado: mede só as passagens dos últimos 45 min (antes 6 h), para o alerta sumir logo depois de corrigido.

## 0.8.0
- "Ao vivo": cada passagem mostra nome, ID, forma de identificação (Facial/Cartão/Senha/QR/Biometria) e setor.
- Control iD: o Zentry lê do equipamento os nomes dos usuários e os setores (áreas dos portais).

## 0.7.2
- Intervalos mínimos de 1 s (análise, presença, consulta).
- Consulta direta Control iD reaproveita a sessão de login (antes logava a cada consulta).

## 0.7.1
- Intervalos mínimos reduzidos: consulta aos equipamentos e verificação de presença 3 s; análise 2 s.

## 0.7.0
- Atualização dentro do programa também para quem usa a versão em pasta (`iniciar_zentry.bat`): baixa o `zentry-ia-X.zip` da release, confere o SHA-256, troca os arquivos do programa (config e dados intactos) e reinicia sozinho.
- Release no GitHub agora publica o zip + `.sha256`.

## 0.6.1
- Corrigido: Control iD grava a hora local como se fosse UTC; o Zentry agora converte (falso alerta de "relógio atrasado ~3 h"). Opção `controlid_clock_utc` para quem tem equipamento em UTC real.
- Corrigido: histórico antigo lido do equipamento não conta mais como evento "ao vivo" (distorcia relógio/offline).

## 0.6.0
- Novo: botão "Procurar na rede" (Configurações → Clientes e equipamentos) varre a rede do PC, identifica Control iD/Hikvision/Intelbras/Dahua/Axis/ZKTeco e adiciona com um clique.
- `iniciar_zentry.bat` mais robusto; mensagem de erro de conexão mais clara.

## 0.5.0
- Atualizações dentro do software: o Zentry consulta as versões publicadas no GitHub, mostra o aviso “Atualização disponível” no topo do painel (com as novidades) e, no Windows, baixa, confere o SHA-256, faz backup e instala com um clique; os dados são mantidos.
- A release do GitHub passa a publicar também o arquivo `.sha256` do instalador.

## 0.4.0
- Novas marcas: Hikvision (ISAPI), Intelbras, Dahua, Axis, ZKTeco (PUSH/ADMS) e um receptor HTTP genérico; marca por equipamento. **Escritas a partir de documentação pública, ainda não validadas em equipamento real.**
- Inspetor “Últimos envios dos equipamentos” (Diagnóstico) para validar marcas e códigos de evento.
- Aviso de recorrência: o mesmo padrão voltando em episódios separados avisa “já aconteceu N vezes” (5, 10, 25…), sem quebrar a regra de ignorar alertas iguais.
- Notificações no celular: Telegram e ntfy, com botão de teste e fila offline.
- HTTPS opcional (certificado autoassinado gerado automaticamente) com porta HTTP separada só para equipamentos.
- Restaurar backup pelo painel (com cópia de segurança automática) e reinício pelo painel.
- Senhas dos equipamentos mascaradas na interface.
- Instalador: libera as portas 8000/8001 e suporta assinatura digital quando há certificado no GitHub.

## 0.3.0
- Painel futurista completo (comando, alertas, equipamentos, pessoas, ao vivo, aprendizado, relatórios, conversa por voz, configurações, diagnóstico).
- Contas com papéis (leitura / operador / administrador), senhas PBKDF2, sessões por cookie, proteção CSRF, limite de tentativas e auditoria.
- Assistente de primeira instalação e banco de dados criado automaticamente na pasta de dados.
- Configuração editável pela interface, com segredos mascarados e gravação atômica.
- Backup diário automático e retenção de dados.
- Conectores por marca (Control iD incluso) e metadados de parâmetros dos detectores.
- Instalador Windows (Inno Setup + PyInstaller) e fluxo de release no GitHub Actions.
- Correção: fusos horários no Windows sem `tzdata` (fallback para o horário de Brasília).

## 0.2.0
- Aprendizado por padrões, conversa com Claude (opcional), voz, 12 detectores.

## 0.1.0
- Primeira versão: servidor, detectores básicos, relatórios.
