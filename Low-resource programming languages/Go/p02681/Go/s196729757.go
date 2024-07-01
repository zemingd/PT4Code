package main

import (
	"fmt"
	"strings"
)

func main() {
	var str1 string
	var str2 string
	fmt.Scanf("%s", &str1)
	fmt.Scanf("%s", &str2)

	str2 = str2[:len(str2)-1]
	result := strings.Compare(str1, str2)
	if result == 0 {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}