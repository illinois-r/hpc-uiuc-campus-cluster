# Expect command line args at the end. 
args = commandArgs(trailingOnly = TRUE)

# Skip args[1] to prevent getting --args

# Obtain the ID being accessed from the array
jobid = as.integer(Sys.getenv("PBS_ARRAYID"))

# Set seed for reproducibility
set.seed(jobid)

# Extract and cast as numeric from character
rnorm(n = as.numeric(args[2]), mean = as.numeric(args[3]))