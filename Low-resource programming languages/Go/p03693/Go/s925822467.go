package main

import (
	"fmt"
	"strconv"
)

func main() {

	var value string
	var kari string
	value = ""

	for i := 0; i < 3; i++ {
		fmt.Scan(&kari)
		value += kari
	}
	i, _ := strconv.Atoi(value)

	if i%4 == 0 {
		fmt.Println("YES")
	} else {

		fmt.Println("No")
	}

}
