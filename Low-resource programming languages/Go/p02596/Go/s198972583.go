package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	if n%2 == 0 {
		fmt.Println(-1)
		return
	}
	i := 1
	c := 1
	for {
		if i*7 < n {
			i = i*10 + 1
			c++
			continue
		}

		if i*7%n == 0 {
			fmt.Println(c)
			return
		}
		i = i*10 + 1
		c++
	}

}