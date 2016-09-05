
airpollutionDir = "C:/Users/mda45/OneDrive/Programming/Statistical_Learning/Hopkins_DataScience/hopkinsdatascience_repo/air_pollution"

pollutantmean <- function(directory, pollutant, id = 1:332){
    val_list <- vector()
    for(i in id){
        cat(i)
        cat("\n")
        filename <- sprintf("%03d.csv", i)
        filepath <- paste(directory, filename, sep="/")
        data = read.csv(filepath)
        data_mean = mean(data[,pollutant], na.rm = TRUE)
        cat(data_mean)
        cat("\n")
        val_list <- c(val_list,data_mean)
    }
    cat(val_list)
    mean(val_list)
}

#checks  -- I am still not getting the right anseers? 
data_70 = read.csv("c:/Users/mda45/Documents/air_pollution/specdata/070.csv")
summary(data_70)
mean(data_70[,"nitrate"], na.rm = TRUE)

data_71 = read.csv("c:/Users/mda45/Documents/air_pollution/specdata/071.csv")
summary(data_71)
mean(data_71[,"nitrate"], na.rm = TRUE)

data_72 = read.csv("c:/Users/mda45/Documents/air_pollution/specdata/072.csv")
summary(data_72)
mean(data_72[,"nitrate"], na.rm = TRUE)

diddly <- c(2.363205, 1.431601, .2551)
mean(diddly)

complete <- function(directory, id = 1:332){
    df <- data.frame(id = numeric(), nobs  = numeric())
    for(i in id){
        cat(i)
        cat("\n")
        filename <- sprintf("%03d.csv", i)
        filepath <- paste(directory, filename, sep="/")
        data = read.csv(filepath)
        complete_sum = sum(complete.cases(data))
        
        df[i,]= complete_sum
        df$id[i] = i
        
    }
    df
}

#checks 
data_1 = read.csv("c:/Users/mda45/Documents/air_pollution/specdata/001.csv")




