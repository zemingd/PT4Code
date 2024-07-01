package main

import "fmt"

func main() {
	var a int
	var b int
	fmt.Scanf("%d %d", &a, &b)
	if b % a == 0 {
		fmt.Printf("%d",b/a)
	} else {
		fmt.Printf("%d",b/a+1)
	}
}