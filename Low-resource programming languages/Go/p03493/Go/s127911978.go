package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)
	count := 0
	for _, c := range s {
		if c == '1' {
			count++
		}
	}
	fmt.Println(count)
}
