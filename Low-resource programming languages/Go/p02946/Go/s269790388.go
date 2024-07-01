package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var k, x int
	fmt.Scan(&k, &x)

	from, to := x-(k-1), x+(k-1)
	if x-k < -1000000 {
		from = -1000000
	}
	if x+k > 1000000 {
		to = 1000000
	}

	var blackableNums []string
	for i := from; i <= to; i++ {
		blackableNums = append(blackableNums, strconv.Itoa(i))
	}
	fmt.Println(strings.Join(blackableNums, " "))
}
