complete <-function(directory, id = 1:332) {
        allfiles<-list.files(path=directory,pattern=".csv", full.names=TRUE)
        df <- data.frame()
        nobs <- data.frame()
        xid <- data.frame()
        for(i in id) {
                ##df <- NULL
                df <- read.csv(allfiles[i])
                ##df <- rbind(df,read.csv(allfiles[i]))
                
                nobs <- rbind(nobs,sum(complete.cases(df)))
                colnames(nobs) <- c("nobs")
                xid <- rbind(xid, id)
                ##dat <- data.frame(id, nobs)
                }
        finedata<-data.frame(cbind(id,nobs))
        finedata
}
