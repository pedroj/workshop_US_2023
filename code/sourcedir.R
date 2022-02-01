#----------------------------------------------------------------------
### FUNCTION: sourceDir
###
#----------------------------------------------------------------------
# sources any *.R files in a given directory
# Args: path 
# trace is a boolean to print file names as they are sourced
# Returns: nothing
# this function is copied from the "source" help text
# 
sourceDir <- function(path, trace = TRUE, ...) {
    for (nm in list.files(path, pattern = "\\.[Rr]$")) {
       if(trace) cat(nm,":")           
       source(file.path(path, nm), ...)
       if(trace) cat("\n")
    }
 }
#----------------------------------------------------------------------
