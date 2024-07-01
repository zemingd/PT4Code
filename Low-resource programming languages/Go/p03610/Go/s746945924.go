package main

import "fmt"

func main() {
	var a string
	fmt.Scan(&a)
	runes := []rune(a)

	for i := range runes {
		if i%2 == 0 {
			fmt.Print(string(runes[i]))
		}
	}

}
