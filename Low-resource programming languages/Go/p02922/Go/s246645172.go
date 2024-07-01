package main

import (
	"fmt"
)

func main() {
	var n, b int
	fmt.Scan(&n, &b)
	items := 1
	cnt := n
	if b == 1 {
		fmt.Println(0)
		return
	}
	for {
		if cnt >= b{
			fmt.Println(items)
			return
		}
		cnt += n -1
		items++
	}
}