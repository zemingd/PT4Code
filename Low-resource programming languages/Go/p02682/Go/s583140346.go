package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)
	if a >= k {
		fmt.Println(a)
	} else if a+b >= k {
		fmt.Println(a)
	} else {
		fmt.Println(a - (k - a - b))
	}
}