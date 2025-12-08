# # BabilAnaliz ⚽  
Flutter + FastAPI + ML ile canlı futbol tahmin uygulaması

## 📱 Özellikler
- Flutter arayüzü ile maç tahmini alma
- FastAPI backend ile canlı tahmin üretme
- Gerçek ML modeli ile sınıflandırma
- Tahmin geçmişini CSV’ye kaydetme
- Python ile grafik görselleştirme

## 🧠 ML Modeli
- `scikit-learn` ile eğitildi
- `joblib` ile `model.pkl` ve `vectorizer.pkl` dosyaları oluşturuldu
- FastAPI üzerinden canlı tahmin yapılır

## 📊 Grafik Örneği

```python
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("history.csv")
df["prediction"].value_counts().plot(kind="bar")
plt.show()