package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)

	var sum int
	for _, char := range n {
		num, _ := strconv.Atoi(string(char))
		sum += num
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
