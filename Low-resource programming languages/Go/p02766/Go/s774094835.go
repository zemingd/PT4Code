package main

import (
	"fmt"
	"strconv"
)

func main() {
	var (
		n int64
		k int
	)
	fmt.Scan(&n, &k)
	fmt.Println(len(strconv.FormatInt(n, k)))
}
