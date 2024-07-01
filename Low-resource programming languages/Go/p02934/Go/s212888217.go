package main

import "fmt"

func main() {
	var (
		n int
		f float32
	)

	fmt.Scan(&n)
	ns := make([]float32, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&ns[i])
		f += 1.0 / ns[i]
	}

	fmt.Println(1.0 / f)
}
