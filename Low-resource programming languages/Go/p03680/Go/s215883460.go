package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N+1)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i+1])
	}
	on := make([]int, N+1)
	n := a[1]
	cnt := 1
	for {
		cnt++
		on[n] += 1
		// log.Println(on)
		n = a[n]
		if n == 2 {
			fmt.Println(cnt)
			break
		}
		if on[n] > 1 {
			fmt.Println("-1")
			break
		}
	}
}
