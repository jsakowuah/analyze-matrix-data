# MATRICES ====
# Creating a matrix
my_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
my_matrix

# Accessing Elements through Indexing
index_matrix <- my_matrix[2, 3]
index_matrix


# Survey data on satisfaction levels for your city (on a scale of 1 to 5) 
#Let's create vectors with this survey data.
Accra <- c(4, 3, 5)  # Satisfaction levels for Accra
Abuja <- c(3, 4, 2)  # Satisfaction levels for Abuja
Nairobi <- c(5, 2, 3)  # Satisfaction levels for Nairobi 
CapeTown <- c(4, 4, 5)  # Satisfaction levels for Cape Town
Lagos <- c(3, 3, 2)  # Satisfaction levels for Lagos
Kigali <- c(5, 4, 3)  # Satisfaction levels for Kigali


# Combine the six vectors into one vector
satisfaction_data <- c(Accra, Abuja, Nairobi, CapeTown, Lagos, Kigali)

# Converting a vector to a matrix with 3 rows representing each city
satisfaction_matrix <- matrix(satisfaction_data, nrow = 3, byrow = FALSE) 

# Print the resulting matrix
satisfaction_matrix 

# Adding rownames and colnames to the matrix
# rownames()
# colnames() 


rownames(satisfaction_matrix) <- c("Rose", "Ben", "Portia")
colnames(satisfaction_matrix) <- c("Accra", "Abuja", "Nairobi", "CapeTown", "Lagos", "Kigali")

satisfaction_matrix


# BASIC ANALYSIS ====
# Calculate the average satisfaction level for each city
# colMeans()
avg_satisfaction <- colMeans(satisfaction_matrix)
avg_satisfaction

# Calculate the overall average satisfaction level across all cities
# mean()
overall_avg <- mean(satisfaction_matrix)
overall_avg

# Apply a logical condition to filter satisfaction levels above a certain threshold
threshold <- 4 
high_satisfaction <- satisfaction_matrix > threshold
high_satisfaction

