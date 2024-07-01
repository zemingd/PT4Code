package main

import "fmt"

func main() {
	var a int
	var b float64

	fmt.Scanf("%d %f", &a, &b)
	var out float64
	out = float64(a) * b
	fmt.Println(int(out))

}