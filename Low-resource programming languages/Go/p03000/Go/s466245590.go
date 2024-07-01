package main

import (
	"fmt"
)

func main() {
	var N, X int
	fmt.Scanf("%d %d", &N, &X)
	var D, i int = 0, 0
	for i = 0; i < N; i++ {
		var Li, Di int
		fmt.Scanf("%d", &Li)
		Di = D + Li
		if Di > X {
			break
		} else {
			D = Di
		}
	}
	fmt.Printf("%d\n", i+1)
}
