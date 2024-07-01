package main

import (
	"fmt"
)

func main() {
	var n, buf int
	fmt.Scan(&n)
	mp := make(map[int]struct{})
	for i := 0; i < n; i++ {
		fmt.Scan(&buf)
		mp[buf] = struct{}{}
	}
	fmt.Println(len(mp))
}
