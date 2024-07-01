package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	A := strings.Repeat(strconv.Itoa(a), b)
	B := strings.Repeat(strconv.Itoa(b), a)

	if strings.Compare(A, B) == 1 {
		fmt.Println(B)
	} else {
		fmt.Println(A)
	}
}
