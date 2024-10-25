// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0

package db

import (
	"context"
)

type Querier interface {
	GetMembersFullJoin(ctx context.Context) ([]GetMembersFullJoinRow, error)
	GetMembersInnerJoin(ctx context.Context) ([]GetMembersInnerJoinRow, error)
	GetMembersLeftJoin(ctx context.Context) ([]GetMembersLeftJoinRow, error)
	GetMembersRightJoin(ctx context.Context) ([]GetMembersRightJoinRow, error)
}

var _ Querier = (*Queries)(nil)
