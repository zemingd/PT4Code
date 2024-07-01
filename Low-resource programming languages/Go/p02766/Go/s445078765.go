package main

import "fmt"
import "strconv"

func main() {
	var n int64
	var k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	rest := strconv.FormatInt(n, k)
	fmt.Println(len(rest))
}
