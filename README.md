# Isotropic Subspaces and Determinant Vector Analysis over Finite Fields

This project explores the structure of isotropic subspaces in a 6-dimensional vector space over the finite field **GF(3)**, using a symmetric bilinear form. It identifies dual pairs of isotropic subspaces, computes determinant vectors, and analyzes their dot products with a fixed coefficient vector.

## 📁 Project Structure

- **Step 1**: Generates all Lagrangian subspaces
- **Step 2**: Finds dual pairs with trivial intersection (equvalent to Lagrangian susbpaces which are paired by the bilinear form in a non-singular way)
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

## Other files

The file Computer calculation_Dual pairs of Lagrangians.pdf contains the output of this program

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
