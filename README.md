# Isotropic Subspaces and Determinant Vector Analysis over Finite Fields

This project explores the structure of isotropic subspaces in a 6-dimensional vector space over the finite field **GF(3)**, using a symmetric bilinear form. It identifies dual pairs of isotropic subspaces, computes determinant vectors, and analyzes their interaction with a fixed coefficient vector.

## 🔬 Mathematical Background

- **Finite Field**: GF(3), the field with 3 elements.
- **Vector Space**: \( \mathbb{F}_3^6 \)
- **Bilinear Form**: Defined by the diagonal matrix \( B = \text{diag}(1, 1, 1, 2, 2, 2) \)
- **Isotropic Subspace**: A subspace \( S \subset V \) such that \( \langle v, w \rangle = 0 \) for all \( v, w \in S \)
- **Dual Pair**: Two isotropic subspaces \( U \) and \( W \) such that \( \dim(U \cap W) = 0 \)

## 📁 Project Structure

- `bilinear_form`: Computes the bilinear form \( v^T B w \)
- `is_isotropic`: Checks if a subspace is isotropic
- **Step 1**: Generates all 3D isotropic subspaces
- **Step 2**: Finds dual pairs with trivial intersection
- **Step 3**: Computes determinant vectors for each subspace
- **Step 4**: Flattens and indexes all determinant vectors
- **Step 5**: Assembles a matrix of all determinant vectors
- **Step 6**: Defines a fixed coefficient vector
- **Step 7**: Computes dot products and analyzes results

## 📊 Output

- Total number of isotropic subspaces
- Total number of dual pairs
- For each dual pair:
  - Bases of both subspaces
  - Determinant vectors
  - Dot products with the coefficient vector
- Count of dual pairs where both dot products are zero

## 🛠 Requirements

This code is designed to run in SageMath, a Python-based mathematics software system.

## 🚀 Running the Code

To run the script:

1. Open SageMath or a Jupyter notebook with SageMath kernel.
2. Copy and paste the code into a cell or script file.
3. Execute the code to see the output.

## 📚 Applications

This analysis has potential applications in:

- Finite geometry
- Coding theory
- Quantum error correction
- Symplectic and orthogonal geometry over finite fields

## 🤖 AI Assistance Disclaimer

This code and accompanying documentation were created with the assistance of **AI (Microsoft Copilot, powered by GPT-4)**.

## 📄 License

This project is open-source and available under the MIT License.

---

Feel free to contribute or suggest improvements!
