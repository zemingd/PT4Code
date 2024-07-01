package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)

	var nn, sum int
	for i := 0; i < len(n); i++ {
		nn, _ = strconv.Atoi(string(n[i]))
		sum += nn
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
