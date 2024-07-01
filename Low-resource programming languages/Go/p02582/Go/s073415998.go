package main

import (
	"fmt"
)

func main() {
	var c, ans int
	var S string
	fmt.Scan(&S)
	for _, s := range S {
		if string(s) == "R" {
			c++
		} else {
			if c > ans {
				ans = c
				c = 0
			}
		}
	}
	if c > ans {
		ans = c
	}
	fmt.Println(ans)
}
