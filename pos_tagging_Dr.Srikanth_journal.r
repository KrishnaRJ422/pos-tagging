devtools::install_github("trinker/termco")
devtools::install_github("trinker/coreNLPsetup")
devtools::install_github("trinker/tagger")
install.packages("qdap")
devtools::install_github("bnosac/RDRPOSTagger")

library(tagger)

library(dplyr)

install.packages("remotes")
remotes::install_github("trinker/tagger")
remotes::install_github("trinker/termco")
remotes::install_github("trinker/coreNLPsetup")

require(backports)
tag_pos(dt1)

if (!require("pacman")) install.packages("pacman")
pacman::p_load_gh(
  "ramnathv/slidify@dev",
  "ramnathv/slidifyLibraries@dev",
  "rstudio/rmarkdown",
  "trinker/reports"
)

library(textreadr)
dt=read_doc("C:/Users/krish/Downloads/Srikanth_Itapu_final.doc")
head(dt)
typeof(dt)
dt1=as.data.frame(dt)
typeof(dt1)
head(dt1)
colnames(dt1)='content'
dim(dt1)



res=tag_pos(dt1,na.rm=TRUE,engine="openNLP")
res
dim(res)
typeof(res)
colnames(res)='content'

library(dplyr)
res %>% c()


res %>% plot()

penn_tags()

res %>% select_tags(c("NN", "NNP", "NNPS", "NNS"))

res %>% select_tags("NN", regex=TRUE)  

res %>%
  as_word_tag() %>%
head()

new<-res %>% select_tags(c("NN", "NNP", "NNPS", "NNS"))


new %>% plot()

res1=tag_pos(res) %>%  as_tuple()
typeof(res1)
#print(as_tuple(res1), truncate=Inf)

res %>% as_universal() %>% plot()

res %>% as_basic() %>% plot()



res %>% as_basic() %>% count_tags()

r1=res %>% as_basic()

r1

colnames(r1)

typeof(r1)

r2=as.data.frame(r1,na.rm=TRUE)

dim(r2)

r2

View(r2)


print(tag_pos(dt1[1])[1])

library(readr)
wt=tokenize(dt)
typeof(wt)
result=tag_pos(as.character(wt))

result
