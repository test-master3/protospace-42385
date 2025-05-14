## 📘 データベース設計（ER図）

本アプリケーションでは、以下の3つのテーブルでデータ管理を行っています。

---

### 🔹 usersテーブル

| カラム名            | 型       | 制約                    |
|---------------------|----------|-------------------------|
| email               | string   | NOT NULL, ユニーク制約  |
| encrypted_password  | string   | NOT NULL               |
| name                | string   | NOT NULL               |
| profile             | text     | NOT NULL               |
| occupation          | text     | NOT NULL               |
| position            | text     | NOT NULL               |

---

### 🔹 prototypesテーブル

| カラム名     | 型         | 制約                                |
|--------------|------------|-------------------------------------|
| title         | string     | NOT NULL                            |
| catch_copy    | text       | NOT NULL                            |
| concept       | text       | NOT NULL                            |
| user_id       | references | NOT NULL, 外部キー（usersテーブル） |

※ 画像は ActiveStorage を用いて管理するため、テーブルには含まれていません。

---

### 🔹 commentsテーブル

| カラム名       | 型         | 制約                                      |
|----------------|------------|-------------------------------------------|
| content        | text       | NOT NULL                                  |
| prototype_id   | references | NOT NULL, 外部キー（prototypesテーブル）  |
| user_id        | references | NOT NULL, 外部キー（usersテーブル）       |

---

### 🔗 テーブル間のリレーション

- **User - Prototype**：1対多（1人のユーザーが複数のプロトタイプを投稿）
- **User - Comment**：1対多（1人のユーザーが複数のコメントを投稿）
- **Prototype - Comment**：1対多（1つのプロトタイプに複数のコメントがつく）

---