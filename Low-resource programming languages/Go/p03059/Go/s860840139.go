package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scanf("%d %d %d", &a, &b, &t)

	c := t / a
	fmt.Println(b * c)
}