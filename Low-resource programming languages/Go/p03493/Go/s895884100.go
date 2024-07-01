package main

import "fmt"

func main() {
	ans := 0
	var s string
	fmt.Scanf("%s", &s)
	for _, c := range s {
		if c == '1' {
			ans++
		}
	}
	fmt.Println(ans)
}
