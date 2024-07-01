package main

import "fmt"

func main() {
	var n, k int
	start := 1
	fmt.Scan(&n, &k)
	a := make([]int, n+1)
	state := make([]int, n+1)
	tmp := make([]int, 5000000)
	tmp[0] = 1
	state[1] = 1
	loopLength := 0

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i+1])
	}

	for i := 0; i < k; i++ {
		start = a[start]
		tmp[i+1] = start
		if state[start] == 1 {
			for j := 0; j < len(tmp); j++ {
				if tmp[j] == start {
					tmp = tmp[j : i+1]
					loopLength = len(tmp)
					break
				}
			}
			// fmt.Println(tmp)
			fmt.Println(tmp[(k-i-1)%loopLength])
			return
		} else {
			state[start] = 1
		}
	}
	println(start)
}
