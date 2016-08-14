############################################################################################
#######   plots from netwok analyzer batch output                                   #######
###########################################################################################

library(ggplot2)


sanos <- read.csv("/media/KINGSTON/sanos_analisis_topologico/analyzer/reporte_subredes.csv",stringsAsFactors=FALSE)
LumA <- read.csv("/media/KINGSTON/lumA_analisis_topologico/analyzer/reporte_subredes.csv",stringsAsFactors=FALSE)
LumB <- read.csv("/media/KINGSTON/lumB_analisis_topologico/analyzer/reporte_subredes.csv",stringsAsFactors=FALSE)
Her2 <- read.csv("/media/KINGSTON/Her2_analisis_topologico/analyzer/reporte_subredes.csv",stringsAsFactors=FALSE)
Basal <- read.csv("/media/KINGSTON/Basal_analisis_topologico/analyzer/reporte_subredes.csv",stringsAsFactors=FALSE)

st<-c("sanos","LumA","LumB","Her2","Basal")
edges<- seq(from=100,to=15000,by=100)

sanos$edges=edges
LumA$edges=edges
LumB$edges=edges
Her2$edges=edges
Basal$edges=edges

sanos$subtipo=st[1]
LumA$subtipo=st[2]
LumB$subtipo=st[3]
Her2$subtipo=st[4]
Basal$subtipo=st[5]

todos<-rbind(sanos,LumA,LumB,Her2,Basal)

pdf("estadisticas_de_redes_vs_numero_de_edges_subtipos.pdf")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges,y=Network.diameter,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Diametro de la red (componente mayor)")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Diametro de la red por subtipos")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Shortest.paths,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Numero de caminos mas cortos")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Numero de caminos mas cortos")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Clustering.Coef ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Clustering Coefficient")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Clustering Coefficient")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Connected.components ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Numero de componentes conectados")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Numero de componentes conectados")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Network.centralization ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Centralización de la red")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Centralización de la red")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Characteristic.path.length ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Longitud caracteristica de caminos")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Longitud caracteristica de caminos")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Avg.num.neighbors ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Numero promedio de vecinos")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Numero promedio de vecinos")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Number.of.nodes ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Numero de nodos")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Numero de nodos")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Network.density ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Densidad de la red")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Densidad de la red")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=edges, y=Network.heterogeneity ,alpha=0.5))+
  xlab("Numero de interacciones")+
  ylab("Heterogeneidad de la red")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Numero de edges vs Heterogeneidad de la red")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=Connected.components , y=Clustering.Coef ,alpha=0.5))+
  xlab("Componentes conectados")+
  ylab("Coeficiente de agrupamiento")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("componentes conectados vs Clustering coef")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=Network.density, y=Clustering.Coef ,alpha=0.5))+
  xlab("Densidad de la red")+
  ylab("Coeficiente de agrupamiento")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Densidad de la red vs Coeficiente de agrupamiento")

ggplot(todos, aes(color=subtipo))+
  geom_point(aes(x=Network.density , y=Shortest.paths , alpha=0.5))+
  xlab("Densidad de la red")+
  ylab("Numero de caminos de longitud minima")+
  #scale_x_log10()+
  #scale_y_log10()+
  ggtitle("Densidad de la red vs Numero de caminos de longitud minima")

dev.off()

