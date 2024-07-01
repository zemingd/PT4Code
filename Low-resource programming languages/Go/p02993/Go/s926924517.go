package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	rs := []rune(s)

	if rs[0] == rs[1] || rs[1] == rs[2] || rs[2] == rs[3] {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
