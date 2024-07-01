package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	ans := a * 100 + b * 10 + c
	if ans % 4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}