package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b string
	fmt.Scanf("%s %s", &a, &b)
	if a[0] < b[0] {
		bint, _ := strconv.Atoi(b)
		fmt.Println(strings.Repeat(a, bint))
	} else {
		aint, _ := strconv.Atoi(a)
		fmt.Println(strings.Repeat(b, aint))
	}
}
