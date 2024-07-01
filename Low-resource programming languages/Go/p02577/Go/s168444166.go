package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scanf(`%s`, &n)
	for len(n) != 1 {
		n = rec(n)
	}
	if n == `0` || n == `9` {
		fmt.Println(`Yes`)
	} else {
		fmt.Println(`No`)
	}
}

func rec(n string) string {
	var sum uint64
	for i := 0; i < len(n); i++ {
		sum += uint64(n[i] - '0')
	}
	return strconv.FormatUint(sum, 10)
}