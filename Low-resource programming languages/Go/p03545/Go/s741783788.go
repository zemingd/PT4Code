package main

import (
	"fmt"
)

const n = 7

var (
	b2i = map[bool]int{false: 0, true: 1}
	seq = []int{}
	flg bool
)

func dfs(left, i int, ops []bool) {
	if i == len(seq) {
		if left == 0 && !flg {
			for i := range seq {
				if i != 0 {
					fmt.Print([...]string{"-", "+"}[b2i[ops[i]]])
				}
				fmt.Print(seq[i])
			}
			fmt.Printf("=%d\n", n)
			flg = true
		}
		return
	}
	dfs(left-seq[i], i+1, append(ops, true))
	if i != 0 {
		dfs(left+seq[i], i+1, append(ops, false))
	}
}

func main() {
	var abcd string
	fmt.Scan(&abcd)

	for _, c := range abcd {
		seq = append(seq, int(c)-'0')
	}
	dfs(n, 0, []bool{})
}
