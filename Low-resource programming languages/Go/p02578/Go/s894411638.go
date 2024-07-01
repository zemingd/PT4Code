package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	t := make([]int, n)
	for i := 0; i < n; i++ {
			fmt.Scan(&t[i])
	}

	var cnt int = 0

	for i := 0; i < (n - 1); i++ {
		if t[i] > t[i + 1]{
			cnt  += (t[i] - t[i + 1])
			t[i + 1] = t[i]
		}
	}

	fmt.Println(cnt)
}