# Download archive file, if it does not exist
#zipFile <- "NEI_data.zip"
#if(!file.exists(zipFile)) {
#	zipURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
#	if(Sys.info()["sysname"] == "Darwin") {
#		download.file(url=zipURL,destfile=zipFile,method="curl")
#	} else {
#		download.file(url=url,destfile=zipFile)
#	}
#}
zipFile <- "NEI_data.zip"
if(!(file.exists("summarySCC_PM25.rds") && 
	file.exists("Source_Classification_Code.rds"))) { 
		if(!file.exists(zipFile)) {
			zipURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
			if(Sys.info()["sysname"] == "Darwin") {
				download.file(url=zipURL,destfile=zipFile,method="curl")
				unzip(zipFile) 
			}
		}
}