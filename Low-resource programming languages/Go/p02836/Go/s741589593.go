package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	i := 0
	j := len(s) - 1
	n := 0
	for i < j {
		if s[i] != s[j] {
			n++
		}
		i++
		j--
	}
	fmt.Print(n)
}
