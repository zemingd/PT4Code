package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	sum := 0
	for i := range s {
		if s[i] == t[i] {
			sum++
		}
	}
	fmt.Println(sum)
}
