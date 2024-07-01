package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	A := strings.Split(a, "")
	if A[2] == A[3] && A[4] == A[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
