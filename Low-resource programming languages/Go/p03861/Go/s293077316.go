package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	ans := 0
	if a%x == 0 {
		ans++
	}
	fmt.Println(b/x - a/x + ans)
}
