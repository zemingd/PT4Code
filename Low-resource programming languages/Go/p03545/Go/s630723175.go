package main

import (
	"fmt"
)

const n = 7

var (
	b2i = map[bool]int{false: 0, true: 1}
	i2b = map[int]bool{0: false, 1: true}
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
	for j := range make([]struct{}, 2) {
		if j == 1 || i != 0 {
			dfs(left-seq[i]*[...]int{-1, 1}[j], i+1, append(ops, i2b[j]))
		}
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
