# Required Packages for Mortgage Wait Time Prediction Project
# Run this script once to install all necessary packages

# List of required packages
packages <- c(
  "tidyverse",      # Data manipulation and visualization
  "lubridate",      # Date/time processing
  "caret",          # Machine learning framework
  "randomForest",   # Random Forest algorithm
  "MASS",           # Statistical functions
  "rstanarm",       # Bayesian regression (may take time to install)
  "ggplot2",        # Plotting (included in tidyverse)
  "knitr",          # R Markdown support
  "rmarkdown"       # R Markdown rendering
)

# Function to install packages if not already installed
install_if_missing <- function(package) {
  if (!require(package, character.only = TRUE, quietly = TRUE)) {
    cat(paste("Installing", package, "...\n"))
    install.packages(package, dependencies = TRUE)
  } else {
    cat(paste("✓", package, "is already installed.\n"))
  }
}

# Header
cat("=======================================================\n")
cat("Mortgage Wait Time Prediction - Package Installation\n")
cat("=======================================================\n\n")

cat("Note: rstanarm installation may take 10-15 minutes.\n")
cat("This is normal and expected.\n\n")

cat("Checking and installing required packages...\n\n")

# Install all packages
sapply(packages, install_if_missing)

cat("\n=======================================================\n")
cat("✓ All required packages are installed!\n")
cat("=======================================================\n\n")

cat("You can now run the analysis:\n")
cat("  1. Open PART_III_DM.Rmd in RStudio\n")
cat("  2. Click 'Knit' or run chunks sequentially\n\n")

# Verify installation
cat("Verifying package installation...\n")
success <- sapply(packages, function(pkg) {
  require(pkg, character.only = TRUE, quietly = TRUE)
})

if (all(success)) {
  cat("\n✓ All packages loaded successfully!\n\n")
  cat("System Information:\n")
  cat("  R Version:", R.version.string, "\n")
  cat("  Platform: ", R.version$platform, "\n")
  cat("\n")
  cat("Ready to predict mortgage wait times! 📊\n")
} else {
  failed <- packages[!success]
  cat("\n✗ The following packages failed to load:\n")
  print(failed)
  cat("\nTry installing them manually:\n")
  cat("  install.packages(c('", paste(failed, collapse = "', '"), "'))\n", sep = "")
}