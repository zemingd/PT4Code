package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	if s[5] == '0' && s[6] <= '4' {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD") /* Reiwa */
	}
}
