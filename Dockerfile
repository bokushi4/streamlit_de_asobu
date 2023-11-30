# ベースとなるイメージを指定
FROM python:3.11

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# アプリケーションのコードをコピー
COPY . .

# Streamlitのポートを開放
EXPOSE 8501

CMD ["/bin/bash"]