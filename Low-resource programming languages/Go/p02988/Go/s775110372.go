package main

import "fmt"

// 答えを返す
func check(in []int) int {
	var cnt int
	for i := 1; i < len(in)-1; i++ {
		if (in[i-1] < in[i] && in[i] < in[i+1]) || (in[i+1] < in[i] && in[i] < in[i-1]) {
			cnt++
		}
	}
	return cnt
}

func main() {
	var n int
	var list []int

	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		var in int
		fmt.Scanf("%d", &in)
		list = append(list, in)
	}

	fmt.Println(check(list))
}
