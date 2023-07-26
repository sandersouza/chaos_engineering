**Experimento de Teste de Resiliência com Chaos Mesh**

**Descrição:**
Este experimento tem como objetivo testar a resiliência da nossa aplicação web mobile, hospedada no EKS na AWS, utilizando o Chaos Mesh para simular a falha de um dos nossos pods. Queremos verificar se o HPA (Horizontal Pod Autoscaler) irá derrubar o pod não responsivo e iniciar um novo pod saudável em resposta à falha.

**Passo-a-Passo do Experimento:**

**Passo 1:** Preparação do Ambiente
- Certificar-se de que o Chaos Mesh está devidamente instalado e configurado no nosso cluster EKS.
- Verificar se o HPA está configurado para a nossa aplicação, com limites de CPU e memória definidos para acionar a escalabilidade.

**Passo 2:** Configuração do Experimento
- use como base os arquivos desse REPO
- Selecione os experimentos mais adequados ao fluxo de sua aplicação

**Passo 3:** Execução do Experimento
- Aplicar o arquivo YAML criado utilizando o comando `kubectl apply -f pod-unresponsive-test.yaml`.
- Monitorar o comportamento do HPA e verificar se ele detecta a falha do pod não responsivo e inicia o processo de escalabilidade.

**Passo 4:** Análise dos Resultados
- Observar o comportamento da nossa aplicação durante o experimento.
- Verificar se o HPA derrubou o pod não responsivo e iniciou um novo pod saudável para substituí-lo.
- Avaliar se a aplicação foi capaz de se recuperar e manter a disponibilidade e funcionalidade adequadas após a falha do pod.

**Passo 5:** Conclusões e Recomendações
- Registrar os resultados obtidos e qualquer comportamento inesperado observado durante o experimento.
- Identificar possíveis melhorias na configuração do HPA ou em outros aspectos da nossa aplicação que podem aumentar a resiliência.
- Propor ações corretivas ou otimizações com base nas conclusões do experimento.

**Passo 6:** Comunicação dos Resultados
- Preparar um relatório resumido com as principais descobertas e recomendações do experimento.
- Apresentar os resultados em uma reunião com a equipe técnica e outras partes interessadas.
- Discutir possíveis próximos passos e planejar a implementação de melhorias com base nas conclusões do teste.

**Passo 7:** Implementação de Melhorias
- Aplicar as ações corretivas e otimizações recomendadas com base nos resultados do experimento.
- Realizar novos testes para validar a eficácia das melhorias implementadas.
- Monitorar continuamente a resiliência da aplicação e estar preparado para realizar mais experimentos de teste de resiliência conforme necessário.

**Conclusão:**
Realizar esse experimento utilizando o Chaos Mesh nos permitirá testar a capacidade de resiliência da nossa aplicação em cenários de falhas controladas. Ao identificar e corrigir possíveis pontos fracos, estaremos mais bem preparados para enfrentar situações adversas no ambiente de produção e garantir uma experiência confiável aos nossos usuários. A busca contínua pela melhoria da resiliência nos ajudará a construir uma aplicação web mobile robusta e altamente disponível.