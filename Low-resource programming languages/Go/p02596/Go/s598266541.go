package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	if n%2 == 0 {
		fmt.Println(-1)
		return
	}
	if n%5 == 0 {
		fmt.Println(-1)
		return
	}
	n = 9 * n
	if n%7 == 0 {
		n = n / 7
	}
	c := 1
	tmp := 1
	for {
		tmp = (tmp * 10) % n
		if tmp == 1 {
			fmt.Println(c)
			return
		}
		c++
	}

}
