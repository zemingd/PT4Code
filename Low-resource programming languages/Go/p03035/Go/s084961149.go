package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := 0
	if 6 <= a && a <= 12 {
		ans = b / 2
	} else if 13 <= a {
		ans = b
	}
	fmt.Println(ans)
}
