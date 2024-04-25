# db-modelo-educalivro
#### Legenda:
| Nome no modelo | Nome completo | Significado |
| -------------- | ------------- | ----------- |
|                | esp.          | Especializacao de |
| PERSON         | Person        | Entidade pessoa |
| STUDENT        | Student       | Entidade estudante (esp. Person) |
| WORKER         | Worker        | Entidade trabalhador (esp. Person) |
| TEACHER        | Teacher       | Entidade professor (esp. Worker) |
| SUBJECT        | Subject       | Entidade materia Escolar |
| RESPONSIBLE    | Responsible   | Entidade responsavel |
| CLASSROOM      | Classroom     | Entidade sala de aula |
| WORKS          | Works         | Entidade tarefa escolar |
| JOBS           | Jobs          | Entidade trabalho escolar (esp. Works) |
| COURT          | Court         | Entidade quadra (esp. Classroom) |
| PROJECT        | Project       | Entidade projetos escolares |
| STUDENT_M      | Student Managed | Entidade liderada por estudantes (esp. Project) |
| SCHOOLAR_M     | Schoolar Managed | Entidade liderada pela escola (esp. Project) |
| OLIMP_COMP     | Olimpic Competition | Entidade turma de competicao olimpica (esp. SCHOOLAR_M)
| CLUBS          | Clubs        | Entidade clubes (esp. STUDENT_M) |
| RESEARCHS      | Researchs    | Entidade pesquisas (esp. STUDENT_M) |
| CONCIL         | Concil       | Entidade concelho estudantil (esp. STUDENT_M) |
| DEPARTMENT     | Department   | Entidade departamento |
| AUDITORIUM     | Auditorium   | Entidade auditorio (esp. DEPARTMENT) |
| NURSERY        | Nursery      | Entidade enfermaria (esp. DEPARTMENT) |
| TECHNOLOGY     | Technology   | Entidade tecnologia (esp. DEPARTMENT) |
| LIBRARY        | Library      | Super Entidade livraria (esp. DEPARTMENT) |
| QUEMISTRY      | Quemistry    | Entidade quimica (esp. DEPARTMENT) |
| SPORTS         | Sports       | Entidade esporte (esp. DEPARTMENT) |
| TRANSPORT      | Transport    | Entidade transporte |
| VAN            | Van          | Entidade van (esp. TRANSPORT) |
| CAR            | Car          | Entidade carro (esp. TRANSPORT) |
| BUS            | Bus          | Entidade onibus (esp. TRANSPORT) |
| MECS           | MECS         | Entidade SAMU (esp. VAN) |
| DORMITORY      | Dormitory    | Entidade dormitorio |
| BEDROOM        | Bedroom      | Entidade quarto (esp. DORMITORY) |
| BATHROOM       | Bathroom     | Entidade banheiro (esp. DORMITORY) |
| FEMALE         | Female       | Entidade feminino (esp. BATHROOM) |
| TRAVELS | Travels | Entidade de viagem (esp. DEPARTMENT) |
| emergence_phone | Emergence Phone | Atributo telefone de emergencia |
| dt_birth       | Date Birth   | Atributo data de nascimento |
| sex            | Sex          | Atributo sexo |
| email          | E-mail       | Atributo e-mail |
| picture        | Picture      | Atributo foto de perfil |
| phone          | Phone        | Atributo numero de telefone |
| cpf            | CPF          | Atributo cadastro de pessoa fisica |
| id             | ID           | Atributo identificador |
| name           | Name         | Atributo nome |
| f_name         | First Name   | Atributo primeiro nome (esp. name) |
| l_name         | Last Name    | Atributo ultimo nome (esp. name) |
| adrss          | Address      | Atributo endereco |
| zip_code       | Zip Code     | Atributo codigo de enderecamento postal |
| complement     | Complement   | Atributo complemento |
| city           | City         | Atributo cidade |
| monthly_fee    | Monthly Fee  | Atributo mensalidade |
| pay_mth        | Payment Method | Atributo metodo de pagamento |
| card           | Card         | Atributo cartao (esp. pay_mth) |
| credit         | Credit       | Atributo credito (esp. cartao) |
| debit          | Debit        | Atributo debito (esp. cartao) |
| c_wallet       | Crypto Wallet       | Atributo carteira de criptomoedas (esp. pay_mth) |
| payment_slip   | Payment Slip | Atributo boleto (esp. pay_mth) |
| grade_avr      | Grade Average | Atributo media de notas |
| school_year    | School Year  | Atributo ano escolar |
| s_workload     | Student Workload | Atibuto carga de horario do estudante |
| resume         | Resume       | Atributo curriculo |
| b_analisys     | Behavious Analisys | Atributo analise de comportamento |
| credit_h       | Credit Hours | Atributo de credito de horas |
| obligatoriness | Obligatoriness | Atributo de obrigatoriedade |
| monthly_price  | Monthly Price | Atributo de valor mensal |
| sbj_workload   | Subject Workload | Atributo de carga de horario da materia |
| modality       | Modality     | Atributo de area |
| menu           | Menu         | Atributo de programa da disciplina |
| salary         | Salary       | Atributo de Salario |
| monthly        | Monthly      | Atributo de valor do mes (esp. salary) |
| bonuses        | Bonuses      | Atributo de valor bonus (esp. salary) |
| floor_number   | Floor Number | Atributo de quantidade de andares |
| css            | Community Space Size | Atributo de tamanho da area comum |
| Tampons_number | Tampons Number | Atributo de numero de absorventes |
| room_size      | Room Size    | Atributo de tamanho do quarto |
| floor          | Floor        | Atributo de andar |
| building       | Building     | Atributo de predio |
| time           | Time         | Atributo de horario |
| avaliability   | Avaliability | Atributo de disponibilidade |
| number         | Number       | Atributo de numero |
| activity       | Activity     | Atributo de atividade |
| dt_conclusion  | Date Conclusion | Atriburo de data de conclusao |
| income         | Income       | Atributo de lucro |
| events         | Events       | Atributo de eventos |
| achievements   | Achievements | Atibuto de conquistas |
| quotes         | Quotes       | Atributo de citacoes |
| papers         | Papers       | Atributo de papers publicados |
| r_subject      | Research Subject | Atributo de assunto de pesquisa |
| voting_results | Voting Results | Atributo de resultado dos votos |
| positions      | Positions    | Atributo de posicoes guardadas pelos alunos |
| s_names        | Student Names | Atributo de nome dos estudantes |
| dt             | Date         | Atributo de data |
| start          | Start        | Atributo de comeco (esp. dt) |
| end            | End          | Atributo de fim (esp. dt) |
| medals         | Medals       | Atributo de medalhas |
| student_positions | Student Positions | Atributo de colocacao dos estudantes |
| size           | Size          | Atributo de tamanho |
| local | Local | Atributo de localizacao |
| num_workers | Number of Workers | Atributo de numero de trabalhadores |
| chairs_qnt | Chairs Quantity | Atributo de quantidade de cadeiras |
| stage_size | Stage Size | Atributo de tamanho de palco |
| usage_price | Usage Price | Atributo de preco por uso |
| projector | Projector | Atributo de projetores |
| television | Television | Atributo de televisao |
| speaker | Speaker | Atributo de alto-falante |
| num_balls | Number of Balls | Atributo de numero de bolas |
| num_shirts | Number of Shirts | Atributo de quantidade de camisas |
| trophies | Trophies | Atributo de numero de trofeus |
| blankets | Blackets | Atributo de lencois |
| emergence_number | Emergence Number | Atributo do numero da emergencia |
| p_allergies | Person Allergies | Atributo de alergias |
| medicines | Medicines | Atributo de medicamentos |
| drugs | Drugs | Atributo de remedios |
| h_items | Health Items | Atributo de itens de saude |
| beds | Beds | Atributo de camas |
| pillows | Pillows | Atributo de travesseiros |
| mouses | Mouses | Atributo de mouses |
| monitors | Monitors | Atributo de monitores |
| computer | Computer | Atributo de computadores |
| protoboards | Protoboards | Atributo de protoboards |
| lrk | Lego Robotic Kits | Atributo de kits de lego de robotica |
| logic_gates | Logic Gates | Atributo de portas logicas |
| raspberry | Raspberry | Atributo de raspberry |
| arduino | Arduino | Atributo de arduino |
| cooper_wire | Cooper Wire | Atributo de fio de cobre |
| pliers | Pliers | Atributo de alicates |
| keyboards | Keyboards | Atributo de teclados |
| nurse | Nurse | Atributo de numero de enfermeiras |
| storage_capacity | Storage Capacity | Atributo de capacidade de armazenamento |
| local | Local | Atributo de local |
| garage_adrss | Garage Address | Atributo de local de estacionamento |
| alcohol_burner | Alcohol Burner | Atributo de queima alcool |
| graduated_cylinder | Graduated Cylinder | Atributo de cilindro graduado |
| test_tube | Test Tube | Atributo de tubo de teste |
| test_tube_rack | Test Tube Rack | Atributo de organizador de tubo de teste |
| beaker | Beaker | Atributo de beaker |
| bunsen_burner | Bunsen Burner | Atributo de queimador de bunsen |
| barometer | Barometer | Atributo de barometro |
| cloth_v | Cloth Value | Atributo de valor do fardamento |
| distance | Distance | Atributo de distancia da viagem |
| t_price | Travel Price | Atributo do valor da viagem |
| MANAGE | Manage | Relacionamento de gerencia o que |
| WORK | Work | Relacionamento de trabalha com |
| SUPERVISES | Supervices | Relacionamento de supervisao |
| ATTENDS | Attends | Relacionamento de atende a |
| TEACHED | Teached | Relacionamento de ensinado por |
| TEACHES | Teaches | Relacionamento de ensina o que |
| DEPENDS | Depends | Relacionamento de depender de |
| LEADER | Leader | Relacionamento de lidera algo |
| SLEEP | Sleep | Relacionamento de dormir |
| HAVE | Have | Relacionamento de ter |
| BRACKET | Bracket | Relacionamento de juntar |
| CONTROLS | Controls | Relacionamento de controlar |
| DRIVES | Drives | Relacionamento de dirigir |

#### Motivacao para adicao das entidades:
- DEPARTMENT: A criacao de departamentos teve como ideia inicial o desenvolvimento mais detalhado da escola, tendo como a primeira ideia a enfermaria (NURSERY), porem para englobar mais eu criei a entidade departamento (DEPARTMENT), para poder a partir desta gerar outras, como a de esporte (SPORTS), aonde a maioria dos colegios tem uma quadra, porem esta quadra normalmente e gerenciada por um professor que trabalha no departemento de esportes, tendo controle das bolas, chaves, e quaisquer aparelhos decorrentes da mesma. E a partir disso, fui me lembrando dos elementos que tinham no meu colegio para poder adicionar mais coisas.
- PROJECT: Este e uma grande vontade minha, de implementar tanto no colegio quando nas faculdades pois eu sinto muita falta de atividades tanto extras como atividades especializadas para alguns alunos, como por exemplo, se desde o ensino medio um aluno ja gosta de fisica, e se junta a outros que tambem gostam, o que custa eles possuirem um horario para ter uma sala, e poder participar de competicoes tendo um professor como guia para tal, como por exemplo a competicao de construcao de foguete, que ja existe, Latin American Space Challenge (LASC). A participacao e capacitacao de alunos em competicoes como esta na minha visao vale muito no momento de aceitar o aluno em uma universiade ou emprego. Alem de que as competicoes olimpicas de matematica, fisica, biologia entre outras ja e uma grande pratica de multiplos colegios para poder chamar atencao para o ensino dado na sala de aula, entao nao foi uma grande complicacao pensar em algo assim.
- DORMITORY: Para mim, o ambiente influencia muito, principalmente nos adolescentes, um ambiente em que todos juntos, estudam, fazem esportes, se divertem, realizam atividades extra-curriculares, e um ambiente mais propicio nao so do aluno estudar, mas dele ser incentivado a avancar cada vez mais em qualquer area que seja, juntamente com a criacao de projetos (PROJECT) e com a distancia minima da instituicao de ensino, com a devida divisao de quartos entre garotos e garotas. O ceu e o limite em relacao a melhora nao so individual mas tambem a melhora em grupo dos diversos alunos, as proprias competicoes saudaveis entre eles de quem tira a maior nota e um insentivo gigantesco para o desenvolvimento estudantil.
- RESPONSIBLE: A entidade responsavel (RESPONSIBLE), representa todo e qualquer responsavel do estudante, pais, avos, tios entre outros que sejam pagantes e/ou numeros de emergencia do menor, o contato e informacao deles e importante para que haja nao so a comunicacao pais-professores, como tambem que em caso de necessidade de urgencia ou de permicao para uma excurcao, por exemplo, possa haver rapidamente esta troca de informacoes.
- CLASSROOM: A sala e uma importantissima identidade de se ter criada, pois como os alunos saberam aonde iram estudar se nao tiverem uma sala, e se dois professores quiserem usar uma mesma sala ao mesmo tempo, sendo que uma segunda sala esta livre; E necessario que haja este controle para que situacoes como as citadas anteriormente nao ocorram. O horario (time) vinculado com a disponibilidade (availability), juntos, conseguem resolver isso.
- TRANSPORT: O transporte mesmo foi criado diante da necessidade dos departamentos de se locomoverem, como um onibus para o time de futebol indo para outro colegio para jogar um campeonato, ou algum funcionario precisa ir para outra localidade para trabalhar em um dia especifico, ou a ambulancia a postos para na necessidade de levar o mais rapido possivel um aluno para a emergencia, sao diversas as necessidades de se ter uma entidade transporte para ser distinta e mais organizada.
- c_wallet: Este atributo, acredito eu, que foi justamente criado, ja que com a modernidade as cada vez mais aceitas como metodo de pagamento, crypto moedas, vem entrando no mercado por conta de suas flutuacoes de inflacao funcionando diferentemente, e com suas insencoes de imposto, momento que ao nao ser rastreada nao pode ser cobrada pelo governo.
- resume: Tanto o curriculo do aluno quando o do professor sao detalhes extremamente importantes, tanto para os responsaveis (RESPONSIBLE), que iram ter um insentivo para colocar o seu dependente na escola, vendo a transparencia, tanto para o aluno, que ao ter seu curriculo montado desde cedo podera ter o suporte para o trabalho e para os estudos muito mais rapidamente.

#### Detalhamento:
Lucro da instituicao de ensino que usufruir deste banco de dados:
- Mensalidade alunos
- Valor da mensalidade dos clubes
- Valor do uso da quadra
- Valor do uso do auditorio
- Valor do uso da sala de quimica
- Valor do uso dos materiais da sala de quimica
- Valor do uso da sala de informatica
- Valor do uso de qualquer meio de transporte (van, carro, onibus)
- Valor da mensalidade do dormitorio
- Valor da mensalidade da sala de projeto liderada por alunos
- Valor do fardamento comprado
- Valor do motorista do meio de transporte
- Valor do lucro das excursoes

### Perguntas que este projeto eh capaz de responder:
- Quais autores e livros são mais buscados pelos alunos?
- Quantos livros um aluno comprou durante o ano letivo?
- Existem salas com muito mais alunos que outras?
- 
- 


### Easter Egg:
-> A quantidade de solicitacoes por caminhoes responsaveis pelo transporte de livros para a escola pode ser otimizada. Dividindo as entregas para os periodos de maior solicitação pelos alunos e dos temas/autores mais solicitados, levando maiores cargas em epocas pontuais, ao inves de mensalmente entragar uma quantidade menor de livros. 


### Uso do código TenstandoSpring:
1. É necessário criar um arquivo application.properties dentro da pasta TenstandoSpring/Teste/src/main/resources
2. Em seguida inserir o seguinte código:
   spring.application.name=Teste
   spring.application.name=MeAjudaDeus
   spring.datasource.url=jdbc:???
   spring.datasource.username=???
   spring.datasource.password=???
   spring.jpa.hibernate.ddl-auto=none
   spring.jpa.show-sql=true
   spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
   spring.jpa.properties.hibernate.format_sql=true
   server.error.inclue-message=always
   spring.sql.init.mode=always
3. Em seguida deve-se criar um banco de dados no postgres e substituir as interrogações por:
   spring.datasource.url=jdbc: *Insira url do banco de dados*
   spring.datasource.username= *Insira usuario do postgres*
   spring.datasource.password= *Insira a senha do usuario postgres*
