package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {

	var a, b string
	fmt.Scanf("%s %s", &a, &b)

	var A, B string
	var i, j int
	i, _ = strconv.Atoi(b)
	j, _ = strconv.Atoi(a)
	A = strings.Repeat(a, i)
	B = strings.Repeat(b, j)

	if A >= B {
		fmt.Println(B)
	} else {
		fmt.Println(A)
	}

}
