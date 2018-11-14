library(brcities)
context("brcities")


test_that("fuzzy_search works", {
  wrong_names<-c("Mogi das Cruses","Sao Paulo","CANTA GALLO")
  correct_names<-c("Canta Galo","Mogi das Cruzes","São Paulo")
  expect_equal(fuzzy_search(x=wrong_names,y=correct_names),c("Mogi das Cruzes","São Paulo","Canta Galo"))
})


context("br_city_indicators")

# Skip tests when not run locally
#skip_on_cran()
#skip_on_travis()
#skip_on_appveyor()

## Check if dimensions are as expected.

am_density<-br_city_indicators(uf="am",indicators=29168)
al_pop<-br_city_indicators(uf="al",indicators = 29171)

test_that("br_city_indicators works",{

  expect_equal(nrow(am_density),62)
  expect_equal(nrow(al_pop),102)

})


context("sp_indicators")

# Skip tests when not run locally
#skip_on_cran()
#skip_on_travis()
#skip_on_appveyor()

## Check if dimensions are as expected.

cotia_pop<-sp_indicators(year=2017,place=130,variable=55)
ribeirao_preto_female_pop<-sp_indicators(2014:2015,place=434,56)

test_that("sp_indicators works",{

  expect_equal(dim(cotia_pop),c(1,9))
  expect_equal(dim(ribeirao_preto_female_pop),c(2,9))
  expect_equal(names(ribeirao_preto_female_pop),c("codigo_localidade",
                                                  "localidade",
                                                  "nome_localidade_pai",
                                                  "codigo_variavel",
                                                  "variavel",
                                                  "periodo",
                                                  "unidade",
                                                  "pop",
                                                  "ano"))
})




