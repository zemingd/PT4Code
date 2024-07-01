package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	b := ""
	arr := strings.Split(a, b)
	// fmt.Println(arr[0], arr[1])
	i := 0
	for i < 3 {
		if arr[i] == arr[i+1] {
			fmt.Println("Bad")
			break
		}
		if (i == 2) && (arr[i] != arr[i+1]) {
			fmt.Println("Good")
		}
		i++
	}
}
