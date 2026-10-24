# Como contribuir

1. Faça um fork e crie uma branch.
2. `python -m unittest discover -s tests` deve passar (só biblioteca padrão; não há dependências).
3. Mudou uma tela? Teste no navegador e rode `node --check zentry/web/*.js`.
4. Novo detector? Veja `docs/detectores.md`; todo detector declara `params`, e um teste confere com o código.
5. Abra o Pull Request descrevendo o problema e como testou.

Princípios: funcionar offline, nunca enviar dados pessoais sem pseudonimizar, e nunca interferir na liberação de acesso.
