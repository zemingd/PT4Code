package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d\n", &n)

	slice := make([]int, n)
	for i := 0; i < n; i++ {
		if i != n-1 {
			fmt.Scanf("%d", &slice[i])
		} else {
			fmt.Scanf("%d\n", &slice[i])
		}
	}

	var q, b, c int
	fmt.Scanf("%d\n", &q)
	out := make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scanf("%d %d\n", &b, &c)
		for j := 0; j < n; j++ {
			if slice[j] == b {
				slice[j] = c
			}
			out[i] += slice[j]
		}
	}

	for _, j := range out {
		fmt.Println(j)
	}

}
