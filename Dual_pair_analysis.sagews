
from itertools import combinations

# Define the finite field and vector space
F = GF(3)
V = VectorSpace(F, 6)

# Bilinear form matrix: diag(1, 1, 1, 2, 2, 2)
B = diagonal_matrix(F, [1, 1, 1, 2, 2, 2])

def bilinear_form(v, w):
    return v * B * w.column()

def is_isotropic(subspace):
    basis = subspace.basis()
    for i in range(len(basis)):
        for j in range(i, len(basis)):
            if bilinear_form(basis[i], basis[j]) != 0:
                return False
    return True

# Generate isotropic subspaces
isotropic_subspaces = [S for S in V.subspaces(3) if is_isotropic(S)]

# Find all dual pairs (U, W) with U ∩ W = {0}
dual_pairs = []
for i, U in enumerate(isotropic_subspaces):
    for j in range(i + 1, len(isotropic_subspaces)):
        W = isotropic_subspaces[j]
        if U.intersection(W).dimension() == 0:
            dual_pairs.append((U, W))

print(f"Total number of isotropic subspaces: {len(isotropic_subspaces)}")
print(f"Total number of dual pairs: {len(dual_pairs)}")

# Compute determinant vectors and dot products with the coefficient vector
column_combinations = list(combinations(range(6), 3))
coeff_vector = vector(F, [2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0])
print(f"\nCoefficient vector: {coeff_vector}")

zero_count = 0
for i, (U, W) in enumerate(dual_pairs):
    mat_U = matrix(U.basis())
    mat_W = matrix(W.basis())
    det_U = [mat_U.matrix_from_columns(cols).determinant() for cols in column_combinations]
    det_W = [mat_W.matrix_from_columns(cols).determinant() for cols in column_combinations]
    vec_U = vector(F, det_U)
    vec_W = vector(F, det_W)
    dot_U = vec_U * coeff_vector
    dot_W = vec_W * coeff_vector
    if dot_U == 0 and dot_W == 0:
        zero_count += 1

print(f"\nTotal number of dual pairs with the linear combination of determinants equal to zero for both Lagranagians: {zero_count}")
