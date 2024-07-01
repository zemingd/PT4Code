package main

import "fmt"

func main() {
	var N, X, T int
	fmt.Scanf("%d %d %d", &N, &X, &T)

	switch {
	case N%X > 0:
		fmt.Println(N/X*T + T)
	default:
		fmt.Println(N / X * T)
	}
}
