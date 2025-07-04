
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

# Step 1: Generate isotropic subspaces
isotropic_subspaces = [S for S in V.subspaces(3) if is_isotropic(S)]

# Step 2: Find dual pairs
dual_pairs = []
used = set()
for i, U in enumerate(isotropic_subspaces):
    if i in used:
        continue
    for j in range(i + 1, len(isotropic_subspaces)):
        if j in used:
            continue
        W = isotropic_subspaces[j]
        if U.intersection(W).dimension() == 0:
            dual_pairs.append((U, W))
            used.add(i)
            used.add(j)
            break

# Step 3: Compute determinant vectors
column_combinations = list(combinations(range(6), 3))
det_vector_map = []
for U, W in dual_pairs:
    pair_vectors = []
    for subspace in (U, W):
        mat = matrix(subspace.basis())
        det_vector = []
        for cols in column_combinations:
            submat = mat.matrix_from_columns(cols)
            det_vector.append(submat.determinant())
        pair_vectors.append(vector(F, det_vector))
    det_vector_map.append(tuple(pair_vectors))

# Step 4: Flatten and index all determinant vectors
all_vectors = []
index_map = {}
idx = 0
for pair in det_vector_map:
    for vec in pair:
        all_vectors.append(vec)
        index_map[tuple(vec)] = idx
        idx += 1

# Step 5: Assemble determinant vectors into a matrix
det_matrix = matrix(F, all_vectors)

# Step 6: Define coefficient vector
coeff_vector = vector(F, [0, 0, 2, 2, 0, 2, 2, 1, 2, 1, 1, 0, 1, 0, 2, 1, 0, 1, 2, 0])

# Step 7: Print required information
print(f"Total number of isotropic subspaces: {len(isotropic_subspaces)}")
print(f"Total number of dual pairs: {len(dual_pairs)}")

print("\nCoefficient vector:")
print(coeff_vector)

print("\nDual pairs and dot products of determinant vectors with the coefficient vector:")
zero_count = 0
for i, (U, W) in enumerate(dual_pairs):
    vec_U = det_vector_map[i][0]
    vec_W = det_vector_map[i][1]
    dot_U = vec_U * coeff_vector
    dot_W = vec_W * coeff_vector
    print(f"\nPair {i + 1}:")
    print("  U basis:")
    for v in U.basis():
        print(f"    {v}")
    print(f"  U determinant vector: {vec_U}")
    print("  W basis:")
    for v in W.basis():
        print(f"    {v}")
    print(f"  W determinant vector: {vec_W}")
    print(f"  Dot products: ({dot_U}, {dot_W})")
    if dot_U == 0 and dot_W == 0:
        zero_count += 1

print(f"\nNumber of dual pairs with both dot products zero: {zero_count}")
