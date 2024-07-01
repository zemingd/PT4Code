package main

import 	"fmt"

func main() {
	var s string
	fmt.Scan(&s)
	count := 0
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == "1" {
			count += 1
		}
	}
	fmt.Println(count)
}