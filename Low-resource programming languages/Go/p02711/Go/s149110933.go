package main

import "fmt"

func main() {
	var N string
	fmt.Scan(&N)
	for _, c := range []rune(N) {
		if string(c) == "7" {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
