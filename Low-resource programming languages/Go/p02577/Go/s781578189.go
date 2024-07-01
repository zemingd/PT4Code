package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)
	var sum int
	sum = 0
	for _, c := range n {
		a, _ := strconv.Atoi(string([]rune{c}))
		sum = sum + int(a)
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
