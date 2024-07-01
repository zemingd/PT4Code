package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	h := int(N / 3600)
	m := (N - h*3600) / 60
	s := (N - h*3600 - m*60)
	fmt.Printf("%d:%d:%d\n", h, m, s)
}

