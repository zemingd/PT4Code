package main

import (
	"fmt"
)

func main() {
	a := SingleInt()
	slice := make([]int, 0, a)

	for i := 0; i < a; i++ {
		slice = append(slice, SingleInt())
	}

	// var accessor int
	// var lastAccessor int
	// c := 1
	// for {
	// 	idx := slice[accessor] - 1 // 2, 0, 2
	// 	lastAccessor = accessor    // 0, 2, 0
	// 	c++
	// 	accessor = idx // 2, 0, 2
	// 	if slice[accessor]-1 == lastAccessor {
	// 		if slice[lastAccessor] == 2 {
	// 			fmt.Println(c)
	// 			return
	// 		}
	// 		fmt.Println(-1)
	// 		return
	// 	}
	// 	if slice[idx] == 2 {
	// 		fmt.Println(c)
	// 		return
	// 	}
	// }

	var now, c int
	for {
		if now == 2 {
			fmt.Println(c)
			return
		}
		if c >= a {
			fmt.Println(-1)
			return
		}
		c++
		if now > 0 {
			now--
		}
		now = slice[now]
	}
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}
