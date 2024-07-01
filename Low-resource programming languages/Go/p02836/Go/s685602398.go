package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	cnt := len(s)
	result := 0
	for i := 0; i < int(cnt/2); i++ {
		if s[i] == s[-i] {
			result++
		}
	}
	fmt.Println(result)
}