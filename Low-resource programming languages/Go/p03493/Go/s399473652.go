package main

import "fmt"

func main() {
	var a int
	var s string
	fmt.Scan(&s)
	for i := 0 ; i < 3 ; i++ {
		if s[i:i+1] == "1" {
			a++
		}
	}
	fmt.Println(a)
}
