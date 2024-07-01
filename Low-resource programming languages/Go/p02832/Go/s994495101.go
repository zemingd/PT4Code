package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	c := 0
	ans := 0
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if c+1 == a {
			c = c + 1
		} else {
			ans++
		}
	}
	if c == 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}
