package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scanf("%s", &n)
	var sum int
	for _, v := range n {
		i, _ := strconv.Atoi(string(v))
		sum += i
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
