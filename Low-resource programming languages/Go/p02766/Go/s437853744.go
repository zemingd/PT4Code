package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int64
	var k int
	fmt.Scan(&n, &k)

	formatted := strconv.FormatInt(n, k)
	fmt.Println(len(formatted))
}
