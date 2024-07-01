package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	var a = make([]int, n+1)
	var time = make([]int, n+1)
	visited := []int{1}
	for i := 1; i <= n; i++ {
		fmt.Scan(&a[i])
	}
	tmp := 1
	for i := 1; i <= k; i++ {
		fmt.Print(tmp)
		next := a[tmp]
		if time[next] != 0 {
			cycle := i - time[next]
			dest := (k-time[next])%cycle + time[next]
			tmp = visited[dest]
			fmt.Print(visited)
			break
		}
		time[next] = i
		visited = append(visited, next)
		if i != k {
			tmp = next
		}
	}
	fmt.Print(tmp)
}
