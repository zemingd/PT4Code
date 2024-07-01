package main

import "fmt"

func main() {
	var s string

	fmt.Scan(&s)

	res := 0
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == "1" {
			res += 1
		}
	}
	fmt.Println(res)
}