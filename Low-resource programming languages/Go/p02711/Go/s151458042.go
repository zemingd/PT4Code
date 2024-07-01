package main

import (
	"fmt"
)

func main() {
	var n []byte
	fmt.Scan(&n)
	if n[0] == '7' || n[1] == '7' || n[2] == '7' {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
