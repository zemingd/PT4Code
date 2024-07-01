package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	if (a == b && a != c) || (a == c && a != b) || (b == c && a != b){
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
