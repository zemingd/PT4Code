package main

import "fmt"

func main() {
	var M, D int
	fmt.Scanf("%d %d\n", &M, &D)
	c := M
	if M > D {
		c--
	}
	fmt.Println(c)
}
