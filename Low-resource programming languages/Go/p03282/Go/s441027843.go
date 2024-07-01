package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	for i, v := range strings.Split(s, "") {
		n, _ := strconv.Atoi(v)
		if i+1 == k {
			fmt.Println(n)
			return
		}
		if n != 1 {
			fmt.Println(n)
			return
		}
	}
}