package main

import "fmt"

func main() {
	var n, d int
	fmt.Scanf("%d", &n)
	D := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &d)
		D[i] = d
	}

	out := 0
	for i := 0; i < n; i++ {
		for ii := i + 1; ii < n; ii++ {
			out += D[i] * D[ii]
		}
	}
	fmt.Println(out)
}
