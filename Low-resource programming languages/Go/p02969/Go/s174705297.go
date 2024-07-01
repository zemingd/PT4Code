package main

import "fmt"

const (
	maxBufferSize     = 2000000 // check
	initialBufferSize = 20000
)

func solve() {
	var r int64
	fmt.Scan(&r)

	ans := 3 * r * r

	fmt.Println(ans)
}

func main() {
	solve()
}
