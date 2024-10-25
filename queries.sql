-- name: GetMembersInnerJoin :many
SELECT 
    m.member_id,
    m.name,
    p.prefecture_name
FROM members m
INNER JOIN prefectures p ON m.prefecture_id = p.prefecture_id;

-- name: GetMembersLeftJoin :many
SELECT 
    m.member_id,
    m.name,
    p.prefecture_name
FROM members m
LEFT JOIN prefectures p ON m.prefecture_id = p.prefecture_id;

-- name: GetMembersRightJoin :many
SELECT 
    m.member_id,
    m.name,
    p.prefecture_name
FROM members m
RIGHT JOIN prefectures p ON m.prefecture_id = p.prefecture_id;

-- name: GetMembersFullJoin :many
SELECT 
    m.member_id,
    m.name,
    p.prefecture_name
FROM members m
LEFT JOIN prefectures p ON m.prefecture_id = p.prefecture_id
UNION
SELECT 
    m.member_id,
    m.name,
    p.prefecture_name
FROM members m
RIGHT JOIN prefectures p ON m.prefecture_id = p.prefecture_id
WHERE m.member_id IS NULL;