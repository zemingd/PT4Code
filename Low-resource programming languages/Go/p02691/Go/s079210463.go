package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ns := make([][]int, n)
	for i := range ns {
		ns[i] = make([]int, 2)
	}
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if i-a >= 0 {
			ns[i-a][0]++
		}
		if i+a < n {
			ns[i+a][1]++
		}
	}
	var sum int
	for _, v := range ns {
		sum += v[0] * v[1]
	}
	fmt.Println(sum)
}
