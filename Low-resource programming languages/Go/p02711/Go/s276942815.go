package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)

	for _, v := range []rune(n) {
		if string(v) == "7" {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
