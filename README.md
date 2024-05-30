# Lalapkg

## Descrição

Um gerenciador de pacotes simples, focado no minimalismo e na simplicidade, compatível com praticamente qualquer distribuição que utilize o bash como shell padrão. No momento, o gerenciador está concentrado na compilação de todos os pacotes.

## Log de Alterações

- Função sync adicionada
- Função info adicionada
- Melhorias no código focando na eficiência
- Função cleardir adicionada
- Melhora no menu help
- Suporte ao sync via git ou http (servidor próprio não está disponível para todo o público, apenas localhost)
- Correções de pequenos bugs
- Correção de bug crítico na case --unmerge
- Suporte a pesquisa de pacotes no repositório custom
- Pacotes instalados e pacotes que falharam serão mostrados no final da execução

## Instalar

cd /opt

git clone https://github.com/Linuxperoxo/lalapkg.git

cd lalapkg

chmod +x install.sh

./install.sh --install

## Remover

cd /opt/lalapkg

./install.sh --remove

## Instruções de Uso

- --emerge <pacote1> <pacote2> ...: Instalação do pacote(s)
- --unmerge <pacote1> <pacote2> ...: Remoção do pacote(s)
- --sync: Sincronização com o repositório
- --info <pacote>: Exibe informações sobre um pacote
- --cleardir: Limpa os diretórios desnecessários
- --search <pacote>: Procura por um pacote

## Licença

Este projeto é licenciado sob a GNU General Public License v3.0 (GPL-3.0). Consulte o arquivo LICENSE para obter detalhes.
