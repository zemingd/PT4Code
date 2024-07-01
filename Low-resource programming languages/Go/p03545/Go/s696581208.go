package main

import (
	"fmt"
)

const n = 7

var (
	seq = []int{}
	flg bool
)

func dfs(left, i int, str string) {
	if i == len(seq) {
		if left == 0 && !flg {
			fmt.Printf("%s=%d\n", str, n)
			flg = true
		}
		return
	}
	for j := range make([]struct{}, 2) {
		if j == 1 || i != 0 {
			tmp := ""
			if i != 0 {
				tmp = [...]string{"-", "+"}[j]
			}
			tmp += string(seq[i] + '0')
			dfs(left-seq[i]*[...]int{-1, 1}[j], i+1, str+tmp)
		}
	}
}

func main() {
	var abcd string
	fmt.Scan(&abcd)

	for _, c := range abcd {
		seq = append(seq, int(c)-'0')
	}
	dfs(n, 0, "")
}
