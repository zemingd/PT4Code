package main

import "fmt"

func main() {
	var n, k int
	fmt.Scanf("%d %d\n", &n, &k)

	count := 0
	for n > 0 {
		n /= k
		count++
	}

	fmt.Printf("%d\n", count)
}
