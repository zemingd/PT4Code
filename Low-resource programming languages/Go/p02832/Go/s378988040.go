package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var c = 0
	for i := 0; i < n; i++ {
		var tmp int
      	fmt.Scan(&tmp)
		if tmp == c+1 {
			c++
		}
	}
	if c == 0 {
		fmt.Println(-1)
		return
	}
	fmt.Println(n - c)
}