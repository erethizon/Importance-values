#### Custom functions for calculating Importance value


#count_forests takes a data frame with a column called Forest that can be a chr or factor
count_forests<-function(df){
  df$Forest<-as.factor(df$Forest)
  Forests<-levels(df$Forest)
  return(Forests)
}

###fix_dbh is a function that removes trees with DBH <10 from the data set

fix_dbh<-function(df) {
  Dump<-which(df$DBHcm =="< 10" | df$DBHcm =="<10")
  df<-df[-Dump,]
  df$DBHcm<-as.character(df$DBHcm)
  df$DBHcm<-as.numeric(df$DBHcm)
  return(df)
}