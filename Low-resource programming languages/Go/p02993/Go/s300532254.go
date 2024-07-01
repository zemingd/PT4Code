package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	var wv rune
	for _, v := range S {
		if wv == v {
			fmt.Println("Bad")
			return
		}
		wv = v
	}
	fmt.Println("Good")
}