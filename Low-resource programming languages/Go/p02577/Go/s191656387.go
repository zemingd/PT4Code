package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)
	var x int
	for _, v := range n {
		temp, _ := strconv.Atoi(string(v))
		x += temp
	}
	if x % 9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
