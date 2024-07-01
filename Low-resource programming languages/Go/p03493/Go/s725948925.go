package main

import "fmt"

func solve() {
	var s string
	fmt.Scan(&s)
	ans := 0
	for _, si := range s {
		if si == '1' {
			ans++
		}
	}
	fmt.Println(ans)
}

func main() {
	solve()
}
