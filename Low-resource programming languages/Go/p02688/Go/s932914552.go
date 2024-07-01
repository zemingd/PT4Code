package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	n := make([]bool, N)
	for i := 0; i < K; i++ {
		var d int
		fmt.Scanf("%d", &d)

		for j := 0; j < d; j++ {
			var a int
			fmt.Scan(&a)
			n[a-1] = true
		}
	}
	counter := 0
	for _, v := range n {
		if v == false {
			counter++
		}
	}

	fmt.Println(counter)
}
