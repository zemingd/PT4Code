package main

import (
	"fmt"
)

func main() {
	var str string
	fmt.Scanf("%s", &str)
	l := len(str)
	if str[l-1:] == str[l-2:l-1] && str[l-3:l-2] == str[l-4:l-3] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
