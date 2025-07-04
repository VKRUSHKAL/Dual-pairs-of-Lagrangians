# Dual-pairs-of-Lagrangians

# Isotropic Subspace Analysis over GF(3)
This SageMath script performs an analysis of 3-dimensional Lagrangian subspaces within a 6-dimensional vector space over the finite field GF(3), using a specified bilinear form.

# Details:
Identifies all 3D isotropic subspaces under a diagonal bilinear form.
Finds dual pairs of isotropic subspaces with trivial intersection, which is equivalent to pairs of isotropic subspaces which are paired by the bilinear form in a non-singular way.
Computes determinant vectors for each subspace based on all 3×3 column combinations, in lexicographic order.
Computes dot products with a fixed coefficient vector.
Outputs the information for each dual pair, including:
Basis vectors
Determinant vectors
Dot products with the coefficient vector
Count of pairs with both dot products equal to zero
🧮 Requirements
SageMath (tested with version ≥ 9.0)
📄 File
isotropic_analysis.sagews — SageMath worksheet containing the full code.
