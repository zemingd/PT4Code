package main

import "fmt"

func main() {
	var n, k int
	start := 0
	fmt.Scan(&n, &k)
	a := make([]int, n)
	state := make([]int, n)
	tmp := make([]int, 5000000)
	tmp[0] = 0
	loopLength := 0

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	for i := 0; i < k; i++ {
		start = a[start] - 1
		tmp[i+1] = start
		if state[start] == 1 {
			for j := 0; j < len(tmp); j++ {
				if tmp[j] == start {
					tmp = tmp[j : i+1]
					loopLength = len(tmp)
					break
				}
			}
			fmt.Println(tmp[(k-i-1)%loopLength] + 1)
			return
		} else {
			state[start] = 1
		}
	}
	println(a[start])
}
