package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	if a < b {
		fmt.Printf("%s\n", strings.Repeat(strconv.Itoa(a), b))
	} else {
		fmt.Printf("%s\n", strings.Repeat(strconv.Itoa(b), a))
	}
}
