package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)
	var strLen = len(str)
	var flag bool
	for i := 1; i < strLen; i++ {
		if str[i] == str[i-1] {
			flag = true
		}
	}
	if flag {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
