package main

import (
	"fmt"
)

func main() {
	var A, B, T int
	fmt.Scan(&A, &B, &T)
	fmt.Println(int((float64(T)+0.5)/float64(A)) * B)
}