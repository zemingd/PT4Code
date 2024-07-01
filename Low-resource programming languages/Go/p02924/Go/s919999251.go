package main

import "fmt"

func main() {
	var N, out int
	fmt.Scanf("%d", &N)
	out = (N - 1) * N / 2
	fmt.Println(out)
}