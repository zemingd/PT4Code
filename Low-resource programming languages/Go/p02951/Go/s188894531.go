package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	ans := b + c - a
	if ans >= 0 {
		fmt.Println(ans)
	} else {
		fmt.Println(0)
	}
}
