package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	mp := map[int]bool{}
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		mp[v] = true
	}
	fmt.Println(len(mp))
}
