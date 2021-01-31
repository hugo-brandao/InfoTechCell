create Database InfoTechCell;
use InfoTechCell;

create table LoginData(
ID_login int not null,
Usuario varchar(60) not null,
Senha varchar(30) not null,
DataNasc int not null,
Nacionalidade int not null,
constraint logindata_pk primary key (ID_login)
);

create table Aparelhos(
ID_aparelhos int not null,
Marca varchar(60) not null,
NomeProduto varchar(60) not null,
VersaoProduto varchar(60) not null,
Valoraparelhos varchar(60) not null,
constraint aparelhos_pk primary key (ID_aparelhos)
);

create table Recomendacoes(
ID_recomendacoes int not null,
ID_aparelhos int not null,
SiteLink varchar(120) not null,
constraint recomendacoes_pk primary key (ID_recomendacoes),
constraint aparelho_recomendacoes_fk foreign key (ID_aparelhos) REFERENCES Aparelhos (ID_aparelhos)
);