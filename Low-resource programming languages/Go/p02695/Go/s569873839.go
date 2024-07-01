package main

import (
	"fmt"
)

var n, m, q int
var abcd [][]int
var arrs [][]int

func main() {
	fmt.Scan(&n, &m, &q)
	create(1, []int{})
	ans := 0
	abcd = make([][]int, q)
	for i := 0; i < q; i++ {
		abcd[i] = make([]int, 4)
		fmt.Scan(&abcd[i][0], &abcd[i][1], &abcd[i][2], &abcd[i][3])
	}
	for _, arr := range arrs {
		score := 0
		for _, seq := range abcd {
			if arr[seq[1]-1]-arr[seq[0]-1] == seq[2] {
				score += seq[3]
			}
		}
		if score > ans {
			ans = score
		}
	}
	fmt.Println(ans)
}

func create(i int, arr []int) {
	if len(arr) == n {
		arrs = append(arrs, arr)
		return
	}
	if i > m {
		return
	}
	create(i+1, append([]int{}, arr...))
	create(i+1, append(arr, i))
	create(i, append(arr, i))
}
