package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var count int
	for i := 0; i < 3; i++ {
		if string(s[i]) == "R" {
			count++
		} else {
			break
		}
	}
	fmt.Println(count)
}