package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i, v := range []rune(s) {
		if i%2 == 0 {
			fmt.Print(string(v))
		}
	}
	fmt.Println()
}
