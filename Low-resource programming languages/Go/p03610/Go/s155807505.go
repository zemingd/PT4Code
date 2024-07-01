package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	result := ""
	for i := 0; i < len(s); i += 2 {
		result += string(s[i])
	}
	fmt.Println(result)
}