package main

import (
	"fmt"
)

func main() {
	var str string
	fmt.Scanf("%s", &str)
	sum := 0

	for _, c := range str {
		sum += int(c - '0')
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
