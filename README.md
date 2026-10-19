> [!IMPORTANT]
> Este website ainda está em desenvolvimento. Algumas informações podem estar incompletas ou desatualizadas.

# Kobukai Aikido

Website da Associação Kobukai de Aikido — escolas de Aikido no Rio Grande do Sul.

## Sobre

O Aikido é uma arte marcial japonesa fundada por Morihei Ueshiba que busca a harmonia e a paz. Este site apresenta informações sobre a arte, técnicas de exame, dojos afiliados e eventos.

## Estrutura

```
.
├── _config.yml          # Configuração do Jekyll
├── _data/               # Dados editáveis (dojos, eventos, contato)
├── _includes/           # Partials (header, footer)
├── _layouts/            # Layouts (default, page)
── assets/
│   ├── css/style.css    # Estilos do site
│   └── images/          # Imagens (capa, galerias)
├── source-material/     # Fontes de conteúdo (NÃO EDITAR)
└── pages/               # Páginas do site
```

## Conteúdo Editável

Os seguintes dados são gerenciados via arquivos YAML em `_data/`:

- **dojos.yml** — Lista de dojos e senseis
- **eventos.yml** — Agenda de eventos e seminários
- **contato.yml** — Informações de contato

## Desenvolvimento

```bash
# Instalar dependências
bundle install

# Servir localmente
bundle exec jekyll serve

# Build para produção
bundle exec jekyll build
```

## Licença

Todos os direitos reservados © Kobukai Aikido
