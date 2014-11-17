# Vectors
a = c(1,2,3,4,5,-1)
b = c("Recoveries", "Reinstatements")
c = c(TRUE, FALSE, TRUE, TRUE)

a[1:3]
a[c(2,4,1)]

# Matrices
my_matrix1 = matrix(1:20, nrow=5, ncol=4)

cells = c(1:4)
rnames = c("R1", "R2")
cnames = c("C1", "C2")
my_matrix2 = matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames))

#Array
dim1 = c("A1", "A2")
dim2 = c("B1", "B2")
dim3 = c("C1", "C2")
dim4 = c("D1", "D2")
my_array = array(1:16, c(2,2,2,2), dimnames=list(dim1, dim2, dim3, dim4))


# Data frames (can contain different types of data)
trial_ids = c(1,2,3,4,5)
recoveries = c(100000, 200000, 15000, 0, 300000)
reinstatements = c(1.0, 0.54, 0.0, 1.0, 0.0)
perils = c("EQ", "EQ", "HU", "HU", "TH")
regions = c("US", "EU", "US", "SA", "US")
my_dataframe = data.frame(trial_ids, recoveries, reinstatements, perils, regions)
