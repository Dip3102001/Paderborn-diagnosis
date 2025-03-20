# 📂 **Notebook Naming Conventions & Usage Instructions**  

## 📌 **Filename Naming Convention**  

Each notebook follows a structured naming convention:  

### 🔹 **Components of the Filename:**  
- **ModelName** → Specifies the model used. *(e.g., ResNet1D, FCNN)*  
- **InputSignal** → Defines the type of input signal.  
  - `RawV` → Raw Vibrational Signal  
  - `SpectroV(s256)` → Spectrogram of vibrational signals with dimensions **256×256**  
- **Output** → The classification output labels.  
  - `I` → Inner Ring Fault  
  - `O` → Outer Ring Fault  
  - `H` → Healthy Condition  

### 📍 **Example Filenames:**  
- `ResNet1D-RawV-IOH.ipynb` → Using **ResNet1D** on **Raw Vibrational Signal**, classifying **Inner Ring, Outer Ring, and Healthy states**.  
- `FCNN-SpectroV(s256)-IOH.ipynb` → Using **FCNN** on **Spectrogram (256x256) of Vibrational Signals**, classifying **Inner Ring, Outer Ring, and Healthy states**.  

---

## 🚀 **Instructions for Running the Notebooks**  

### ⚠️ **Important Considerations**  
Running the notebooks **in Google Colab** is highly recommended due to:  
1️⃣ **Large Dataset Size** → Efficiently handling large datasets requires cloud resources.  
2️⃣ **High GPU Memory Requirement** → The model requires **>10GB of GPU memory** for fast training.  

### 🛠 **Steps to Run the Notebook on Google Colab**  

#### ✅ **Step 1: Download Dataset from Kaggle**  
1. Visit the [Kaggle dataset repository](https://www.kaggle.com/) (Replace with actual dataset link).  
2. Download the dataset to your local system.  
3. Upload the dataset to **Google Drive** for easy access in Colab.  

#### ✅ **Step 2: Set the Dataset Path in the Notebook**  
Modify the `root_dir` variable to point to the directory where the dataset is stored.  

```python
root_dir = "/content/drive/MyDrive/Dataset/"
```

#### ✅ **Step 3: Initialize Download Directory**  
Create a directory to store results:  

```python
import os

result_dir = "/content/drive/MyDrive/Results/"
os.makedirs(result_dir, exist_ok=True)
```

#### ✅ **Step 4: Start Training the Model**  
Execute all cells sequentially to train the model using GPU.  

---

## 🏆 **Conclusion**  
Following these steps ensures seamless execution of the notebook on **Google Colab**, leveraging its powerful **GPU resources** for efficient model training. 🚀
