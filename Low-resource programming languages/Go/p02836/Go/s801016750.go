package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	res := 0
	for i := 0; i < len(s)/2; i++ {
		if s[i:i+1] != s[len(s)-(i+1):len(s)-i] {
			res++
		}
	}
	fmt.Println(res)
}
