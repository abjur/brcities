
[![Travis-CI Build Status](https://travis-ci.org/abjur/brcities.svg?branch=master)](https://travis-ci.org/abjur/brcities) [![Coverage status](https://codecov.io/gh/abjur/brcities/branch/master/graph/badge.svg)](https://codecov.io/github/abjur/brcities?branch=master) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jjesusfilho/brcities?branch=master&svg=true)](https://ci.appveyor.com/project/jjesusfilho/brcities)

<!-- README.md is generated from README.Rmd. Please edit that file -->
brcities
========

The goal of brcities is to download Brazilian cities' indicators from the Brazilian National Institute of Geography and Statistics, aka IBGE. For the time being, it also downloads cities demographics from Fundação Seade in São Paulo. We hope to add more data from states's level government sources.

All functions and datasets available start with two letters indicating the source of the information. So if the federal government is the source, it starts with `br` followed by underscore and the remaining of the function name. Likewise, if the source is São Paulo, the function will start with `sp`. Once we add more sources from the states, all functions will start either with `br_` or `uf_` and the user will have to provide the name of the state.

Installation
------------

You can install brcities from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("abjur/brcities")
```

Usage
-----

The `br_city_indicators()` function returns a tibble with the indicators from the state cities. A list of all indicators is found at the end of this readme.

``` r
pop_ac<-br_city_indicators(uf="ac",indicators=25207)
```

If you want data from São Paulo's state, check the documentation for `sp_indicators()` function. It provides lots of demographic indicators.

Datasets
--------

The package provides five datasets: `br_city_code` containing IBGE code for every Brazilian city along with the respective state code, `br_state_code` containing IBGE code for every federative unity (states + the federal district), `br_indicators_code` with the IBGE indicator's numbers, `sp_place` with São Paulo places (cities and regions) codes, and `sp_variable` with the variables (indicators) code to get demographics from São Paulo.

IGBE's indicators
-----------------

There are 28 indicators put available by IBGE. You can load them via:

``` r
data(br_indicators_code)
```

And also check them below:

<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
indicator
</th>
<th style="text-align:right;">
code
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
