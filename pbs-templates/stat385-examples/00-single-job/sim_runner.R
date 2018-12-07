# Expect command line args at the end.
args = commandArgs(trailingOnly = TRUE)
# Skip args[1] to prevent getting --args
# Extract and cast as numeric from character
rnorm(n = as.numeric(args[2]), mean = as.numeric(args[3]))