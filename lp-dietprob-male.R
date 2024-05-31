# Install lpSolve package
install.packages("lpSolve")

# Import lpSolve package
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(10, 30, 30, 30, 30, 25, 45, 40, 40, 40, 40, 10, 40, 13, 15, 45, 20, 40, 50, 14)

# Set matrix corresponding to coefficients of constraints by rows (male)
f.con <- matrix(c(
  2.1, 4, 14.3, 7, 5, 1, 38, 24, 35, 44, 41.6, 14, 56, 5.8, 14.1, 33, 32, 9, 29, 13.4, # Constraint 1
  0.2, 13, 46.8, 1, 124, 21, 43, 2.6, 7, 44, 16.4, 12, 60, 7.5, 10.3, 37, 11, 18, 121, 17, # Constraint 2
  29.7, 6, 13.8, 37, 28, 1, 19, 0, 11, 4, 15.2, 0.6, 28, 0.5, 2.8, 12, 17, 47, 91, 4.8, # Constraint 3
  0, 46, 32, 56, 40.9, 1, 53, 0, 6, 5.1, 14.85, 0, 4.9, 0, 0, 14.6, 5.8, 0, 58, 0, # Constraint 4
  11, 35, 188, 174, 82, 1, 41, 41, 40, 50, 89.3, 36, 271, 29.9, 47, 52, 39, 74, 225, 16, # Constraint 5
  0.6, 1, 4.2, 4, 1.5, 1, 1, 1.2, 1.3, 3, 10.072, 1.9, 9.1, 0.774, 0.8, 4.3, 3.1, 3.3, 7, 6, # Constraint 6
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 # Constraint 7
), nrow = 7, byrow = TRUE)

# Set inequality/equality signs
f.dir <- c(">=", ">=", ">=", ">=", ">=", ">=", ">=")

# Set right hand side coefficients
f.rhs <- c(71, 40, 145, 70, 750, 12, 2)

# Solve the linear programming problem
solution <- lp("min", f.obj, f.con, f.dir, f.rhs)

# Print the final value of the objective function
solution$objval

# Print the final values of the decision variables
solution$solution

