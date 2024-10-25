-- schema.sql
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    prefecture_id INT
);

CREATE TABLE prefectures (
    prefecture_id INT PRIMARY KEY,
    prefecture_name VARCHAR(50) NOT NULL
);

-- サンプルデータ
INSERT INTO members (member_id, name, prefecture_id) VALUES
    (1, '田中太郎', 13),
    (2, '鈴木花子', 27),
    (3, '佐藤次郎', 14),
    (4, '山田五郎', NULL),
    (5, '中村三郎', 99);

INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES
    (13, '東京都'),
    (14, '神奈川県'),
    (27, '大阪府'),
    (40, '福岡県');