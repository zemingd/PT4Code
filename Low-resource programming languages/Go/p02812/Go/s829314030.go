package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	c := 0
	for i := 0; i < n-2; i++ {
		tmp := string(s[i : i+3])
		if tmp == "ABC" {
			c++
		}
	}
	fmt.Println(c)
}
