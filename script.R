sudo chmod -R ugo+rw /usr/local/lib/R/site-library
install.packages()

url<-"https://cidades.ibge.gov.br/brasil/sintese/pe?indicadores=29765%2C47001%2C29171"

s<-GET()

library(rvest)

GET("cidades.ibge.gov.br")


a<-GET("https://servicodados.ibge.gov.br/api/v1/pesquisas/indicadores/29765|47001|29171/resultados/26xxxxx")



a<-GET(url)
a<-content(a,"text")
b<-fromJSON(a)



d<-b$res


url_i<-"https://cidades.ibge.gov.br/dist/main-client.js?v=OwEQTyAPF6A1z7pZrInyXmcSdBEAIy3r68kQQXfi69M"



s<-GET(url_i) %>% 
  content() %>% 
  jsonlite::fromJSON()




