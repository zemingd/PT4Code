package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := ""
	for i, v := range s {
		if i % 2 == 0 {
			ans += string([]rune{v})
		}
	}
	fmt.Println(ans)
}