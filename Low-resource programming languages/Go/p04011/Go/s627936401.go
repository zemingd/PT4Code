package main;

import "fmt"

func main() {
	var N, K, X, Y int
	fmt.Scan(&N, &K, &X, &Y)
	l := (N - K)
	if l < 0 {
		l = 0
	}
	fmt.Println(K * X + l * Y)

}

