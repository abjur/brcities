
[![Travis-CI Build Status](https://travis-ci.org/jjesusfilho/cidades.svg?branch=master)](https://travis-ci.org/jjesusfilho/cidades)

<!-- README.md is generated from README.Rmd. Please edit that file -->
cidades
=======

The goal of cidades is to download indicators of Brazilian cities from the Brazilian National Institute of Geography and Statistics, aka IBGE.

Installation
------------

You can install cidades from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("jjesusfilho/cidades")
```

Usage
-----

The only function returns a tibble with the indicators from the state cities.

``` r
pop_ac<-city_indicators(uf="ac",indicators=25207)
```

There are 28 indicators put available by IBGE. You can load them via:

``` r
data(df_indicator)
```

And also check them below:

<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
indicator
</th>
<th style="text-align:right;">
id
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
População estimada \[2017\]
</td>
<td style="text-align:right;">
29171
</td>
</tr>
<tr>
<td style="text-align:left;">
População no último censo \[2010\]
</td>
<td style="text-align:right;">
25207
</td>
</tr>
<tr>
<td style="text-align:left;">
Densidade demográfica \[2010\]
</td>
<td style="text-align:right;">
29168
</td>
</tr>
<tr>
<td style="text-align:left;">
Salário médio mensal dos trabalhadores formais \[2015\]
</td>
<td style="text-align:right;">
29765
</td>
</tr>
<tr>
<td style="text-align:left;">
Pessoal ocupado \[2015\]
</td>
<td style="text-align:right;">
29763
</td>
</tr>
<tr>
<td style="text-align:left;">
População ocupada \[2015\]
</td>
<td style="text-align:right;">
60036
</td>
</tr>
<tr>
<td style="text-align:left;">
Percentual da população com rendimento nominal mensal per capita de até 1/2 salário mínimo \[2010\]
</td>
<td style="text-align:right;">
60037
</td>
</tr>
<tr>
<td style="text-align:left;">
Taxa de escolarização de 6 a 14 anos de idade \[2010\]
</td>
<td style="text-align:right;">
60045
</td>
</tr>
<tr>
<td style="text-align:left;">
IDEB – Anos iniciais do ensino fundamental \[2015\]
</td>
<td style="text-align:right;">
60041
</td>
</tr>
<tr>
<td style="text-align:left;">
IDEB – Anos finais do ensino fundamental \[2015\]
</td>
<td style="text-align:right;">
60042
</td>
</tr>
<tr>
<td style="text-align:left;">
Matrículas no ensino fundamental \[2015\]
</td>
<td style="text-align:right;">
5908
</td>
</tr>
<tr>
<td style="text-align:left;">
Matrículas no ensino médio \[2015\]
</td>
<td style="text-align:right;">
5913
</td>
</tr>
<tr>
<td style="text-align:left;">
Docentes no ensino fundamental \[2015\]
</td>
<td style="text-align:right;">
5929
</td>
</tr>
<tr>
<td style="text-align:left;">
Docentes no ensino médio \[2015\]
</td>
<td style="text-align:right;">
5934
</td>
</tr>
<tr>
<td style="text-align:left;">
Número de estabelecimentos de ensino fundamental \[2015\]
</td>
<td style="text-align:right;">
5950
</td>
</tr>
<tr>
<td style="text-align:left;">
Número de estabelecimentos de ensino médio \[2015\]
</td>
<td style="text-align:right;">
5955
</td>
</tr>
<tr>
<td style="text-align:left;">
PIB per capita \[2015\]
</td>
<td style="text-align:right;">
47001
</td>
</tr>
<tr>
<td style="text-align:left;">
Percentual das receitas oriundas de fontes externas \[2015\]
</td>
<td style="text-align:right;">
60048
</td>
</tr>
<tr>
<td style="text-align:left;">
Índice de Desenvolvimento Humano Municipal (IDHM) \[2010\]
</td>
<td style="text-align:right;">
30255
</td>
</tr>
<tr>
<td style="text-align:left;">
Total de receitas realizadas \[2008\]
</td>
<td style="text-align:right;">
28141
</td>
</tr>
<tr>
<td style="text-align:left;">
Total das despesas realizadas \[2008\]
</td>
<td style="text-align:right;">
29748
</td>
</tr>
<tr>
<td style="text-align:left;">
Mortalidade Infantil \[2014\]
</td>
<td style="text-align:right;">
30279
</td>
</tr>
<tr>
<td style="text-align:left;">
Internações por diarreia \[2016\]
</td>
<td style="text-align:right;">
60032
</td>
</tr>
<tr>
<td style="text-align:left;">
Estabelecimentos de Saúde SUS \[2009\]
</td>
<td style="text-align:right;">
28242
</td>
</tr>
<tr>
<td style="text-align:left;">
Área da unidade territorial \[2016\]
</td>
<td style="text-align:right;">
29167
</td>
</tr>
<tr>
<td style="text-align:left;">
Esgotamento sanitário adequado \[2010\]
</td>
<td style="text-align:right;">
60030
</td>
</tr>
<tr>
<td style="text-align:left;">
Arborização de vias públicas \[2010\]
</td>
<td style="text-align:right;">
60029
</td>
</tr>
<tr>
<td style="text-align:left;">
Urbanização de vias públicas \[2010\]
</td>
<td style="text-align:right;">
60031
</td>
</tr>
</tbody>
</table>
