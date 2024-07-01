package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)
	if str[0] == str[1] && str[1] == str[2] {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
