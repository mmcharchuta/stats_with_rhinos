library("FactoMineR")
library("factoextra")
library("readxl")


# Zadanie 1. Dla danych „dziesiecioboj.xlsx”:
dziesiecioboj <- read_excel("dziesiecioboj.xlsx")
head(dziesiecioboj)
# 1. Wyznaczyć wartości własne oraz wariancje składowych głównych
res.pca <- prcomp(dziesiecioboj[, -1],  scale = TRUE)
eigenvalues <- (res.pca$sdev)^2
eigenvalues
# 2. Wykonać wykres osypiska
fviz_eig(res.pca, addlabels = TRUE, ylim = c(0, 40))
# 3. Wykonać wykres zmiennych (cech)
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 4. Przedstawić graficznie jakość zmiennych za pomocą „cos2”
fviz_pca_var(res.pca, col.var="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 5. Przedstawić graficznie „wkłady” zmiennych za pomocą „contrib”
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 6. Wykonać wykres obserwacji (jednostek)
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 7. Przedstawić graficznie jakość obserwacji za pomocą „cos2”
fviz_pca_ind(res.pca, col.ind="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 8. Przedstawić graficznie „wkłady” obserwacji za pomocą „contrib”
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 9. Wykonać biplot obserwacji oraz zmiennych.
fviz_pca_biplot(res.pca, label = "var", habillage=dziesiecioboj$Athlets,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())

# Zadanie 2. Dla danych „kalusy-PCA.txt”:
kalusy <- read.table("kalusy-PCA.txt", header = TRUE)
head(kalusy)
# 1. Wyznaczyć wartości własne oraz wariancje składowych głównych
res.pca <- prcomp(kalusy[, -1],  scale = TRUE)
eigenvalues <- (res.pca$sdev)^2 
# 2. Wykonać wykres osypiska]
fviz_eig(res.pca, addlabels = TRUE, ylim = c(0, 75))
# 3. Wykonać wykres zmiennych (cech)
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 4. Przedstawić graficznie jakość zmiennych za pomocą „cos2”
fviz_pca_var(res.pca, col.var="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 5. Przedstawić graficznie „wkłady” zmiennych za pomocą „contrib”
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 6. Wykonać wykres obserwacji (jednostek)
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 7. Przedstawić graficznie jakość obserwacji za pomocą „cos2”
fviz_pca_ind(res.pca, col.ind="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 8. Przedstawić graficznie „wkłady” obserwacji za pomocą „contrib”
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 9. Wykonać biplot obserwacji oraz zmiennych.

# wg. genotypów
fviz_pca_biplot(res.pca, label = "var", habillage=colnames(kalusy),
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())
# Error in .add_ind_groups(X, df, habillage) : 
#   The number of active individuals is different from the length of the factor habillage. Please, remove the supplementary individuals in the variable habillage.   
# wg. pożywek
fviz_pca_biplot(res.pca, label = "var", habillage=rownames(kalusy),
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())


# Zadanie 3. Dla danych „iris”:
data(iris)

# 1. Wyznaczyć wartości własne oraz wariancje składowych głównych
res.pca <- prcomp(iris[, -5],  scale = TRUE)
eigenvalues <- (res.pca$sdev)^2
# 2. Wykonać wykres osypiska    
fviz_eig(res.pca, addlabels = TRUE, ylim = c(0, 75))
# 3. Wykonać wykres zmiennych (cech)
fviz_pca_var(res.pca, col.var="contrib",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 4. Przedstawić graficznie jakość zmiennych za pomocą „cos2”
fviz_pca_var(res.pca, col.var="cos2",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 5. Przedstawić graficznie „wkłady” zmiennych za pomocą „contrib”
fviz_pca_var(res.pca, col.var="contrib",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 6. Wykonać wykres obserwacji (jednostek)
fviz_pca_ind(res.pca, col.ind="contrib",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 7. Przedstawić graficznie jakość obserwacji za pomocą „cos2”
fviz_pca_ind(res.pca, col.ind="cos2",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 8. Przedstawić graficznie „wkłady” obserwacji za pomocą „contrib”
fviz_pca_ind(res.pca, col.ind="contrib",
                gradient.cols = c("white", "blue", "red"),
                repel = TRUE)
# 9. Wykonać biplot obserwacji oraz zmiennych.
fviz_pca_biplot(res.pca, label = "var", habillage=iris$Species,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())

# Zadanie 4. Dla danych „eucarpia2.txt”:
eucarpia2 <- read.table("eucarpia2.txt", header = TRUE)

# 1. Wyznaczyć wartości własne oraz wariancje składowych głównych
res.pca <- prcomp(eucarpia2[, 4:ncol(eucarpia2)],  scale = TRUE)
eigenvalues <- (res.pca$sdev)^2
eigenvalues
# 2. Wykonać wykres osypiska
fviz_eig(res.pca, addlabels = TRUE, ylim = c(0, 80))
# 3. Wykonać wykres zmiennych (cech)
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 4. Przedstawić graficznie jakość zmiennych za pomocą „cos2”
fviz_pca_var(res.pca, col.var="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 5. Przedstawić graficznie „wkłady” zmiennych za pomocą „contrib”
fviz_pca_var(res.pca, col.var="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 6. Wykonać wykres obserwacji (jednostek)
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 7. Przedstawić graficznie jakość obserwacji za pomocą „cos2”
fviz_pca_ind(res.pca, col.ind="cos2",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 8. Przedstawić graficznie „wkłady” obserwacji za pomocą „contrib”
fviz_pca_ind(res.pca, col.ind="contrib",
             gradient.cols = c("white", "blue", "red"),
             repel = TRUE)
# 9. Wykonać biplot obserwacji oraz zmiennych.

# wg. roku
fviz_pca_biplot(res.pca, label = "var", habillage=eucarpia2$rok,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())
# wg. pozywki
fviz_pca_biplot(res.pca, label = "var", habillage=eucarpia2$pozywka,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())
# wg. genotypu
fviz_pca_biplot(res.pca, label = "var", habillage=eucarpia2$genotyp,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal())
