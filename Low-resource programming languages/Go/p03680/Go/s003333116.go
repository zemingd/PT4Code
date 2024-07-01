package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	arr, flags := make([]int, n + 1), make([]bool, n + 1)
	for i := 1; i <= n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
	}
	flags[1] = true
	now := 1
	count := 1
	for true {
		next := arr[now]
		if next == 2 {
			fmt.Println(count)
			break
		} else if flags[next] {
			fmt.Println(-1)
			break
		}
		now = next
		count++
	}
}