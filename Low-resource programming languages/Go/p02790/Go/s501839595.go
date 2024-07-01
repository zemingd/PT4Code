package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	var aString, bString string

	fmt.Scanf("%d %d", &a, &b)
	aString = strconv.Itoa(a)
	bString = strconv.Itoa(b)

	if a <= b {
		fmt.Println(strings.Repeat(aString, b))
	} else {
		fmt.Println(strings.Repeat(bString, a))
	}
}
