package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := 0
	if a > 12 {
		ans = b
	} else if a > 5 {
		ans = b / 2
	}
	fmt.Println(ans)
}
