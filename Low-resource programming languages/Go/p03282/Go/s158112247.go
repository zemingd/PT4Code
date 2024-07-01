package main

import "fmt"

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	if s[0] == '1' {
		if k == 1 {
			fmt.Println("1")
		} else {
			fmt.Println(string(s[1]))
		}
	} else {
		fmt.Println(string(s[0]))
	}
}
