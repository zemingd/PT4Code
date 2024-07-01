package main

import "fmt"

func main() {
	var a int64
	var b float64

	fmt.Scanf("%d %f", &a, &b)
	ans := a * int64(b*100+0.5)

	fmt.Println(ans / 100)
}