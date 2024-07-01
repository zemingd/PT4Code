package main

import "fmt"

var s string

func main() {
	fmt.Scan(&s)
	rs := []rune(s)
	if rs[2] == rs[3] && rs[4] == rs[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
