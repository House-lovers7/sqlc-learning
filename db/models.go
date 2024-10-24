// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0

package db

import (
	"database/sql"
)

type Member struct {
	MemberID     int32         `json:"member_id"`
	Name         string        `json:"name"`
	PrefectureID sql.NullInt32 `json:"prefecture_id"`
}

type Prefecture struct {
	PrefectureID   int32  `json:"prefecture_id"`
	PrefectureName string `json:"prefecture_name"`
}
