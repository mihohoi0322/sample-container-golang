# Goの公式イメージをベースにする
FROM golang:1.22.1

# ワーキングディレクトリを設定
WORKDIR /app

# Goのソースコードとgo.modファイルをコピー
COPY main.go go.mod ./

# Goのアプリケーションをビルド
RUN go build -o main .

# ポート8080を公開
EXPOSE 8080

# ビルドしたアプリケーションを実行
CMD ["/app/main"]

# docker build --platform=linux/amd64 -t sample-container-golang .