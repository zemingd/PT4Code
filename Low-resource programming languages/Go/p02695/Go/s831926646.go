package main

import "fmt"

var n, m, q int
var a, b, c, d []int
var ans int

func dfs(A []int) {
	if(len(A) == n + 1) {
		sum := 0
		for i:=0; i<q; i++ {
			if(A[b[i]]-A[a[i]] == c[i]) {
				sum += d[i]
			}
		}
		if(sum > ans) {
			ans = sum
		}
		return
	}
	A = append(A, A[len(A)-1])
	for A[len(A)-1] <=m {
		dfs(A)
		A[len(A)-1]++
	}
}

func main() {
	fmt.Scan(&n, &m, &q)
	a, b, c, d = make([]int, q), make([]int, q), make([]int, q), make([]int, q)
	for i:=0; i<q; i++ {
		fmt.Scan(&a[i], &b[i], &c[i], &d[i])
	}
	dfs([]int{1})
	fmt.Printf("%d", ans)
}