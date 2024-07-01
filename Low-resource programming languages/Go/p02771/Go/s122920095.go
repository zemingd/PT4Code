package main

import (
	"fmt"
)

func main() {
	var ABC = make([]int, 3)

	fmt.Scanln(&ABC[0], &ABC[1], &ABC[2])

	if ABC[0] == ABC[1] && ABC[0] != ABC[2] && ABC[1] != ABC[2] {
		fmt.Println("Yes")
	} else if ABC[0] == ABC[2] && ABC[0] != ABC[1] && ABC[2] != ABC[1] {
		fmt.Println("Yes")
	} else if ABC[1] == ABC[2] && ABC[1] != ABC[0] && ABC[2] != ABC[0] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}