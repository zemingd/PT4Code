package main

import (
	"fmt"
	// "strings"
)

func main() {

	var str string
	fmt.Scan(&str)

	var sum int64
	for _, v := range str {

		sum += int64(v) - '0'
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
