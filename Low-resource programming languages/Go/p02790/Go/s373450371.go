package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	if a >= b {
		fmt.Println(strings.Repeat(strconv.Itoa(b), a))
	} else {
		fmt.Println(strings.Repeat(strconv.Itoa(a), b))
	}
}