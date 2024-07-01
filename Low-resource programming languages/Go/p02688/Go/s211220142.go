package main

import "fmt"

func main() {
	var n, k int

	fmt.Scanf("%d %d", &n, &k)
	a := make([]int, n)
	var d int
	c := make([]int, n)
	count := 0

	for i := 0; i < k; i++ {
		fmt.Scanf("%d", &d)
		for j := 0; j < d; j++ {
			fmt.Scanf("%d", &a[j])
		}
		for j := 0; j < d; j++ {
			c[a[j]-1] = 1
		}
	}

	for i := 0; i < n; i++ {
		if c[i] == 0 {
			count++
		}
	}
	fmt.Println(count)
}
