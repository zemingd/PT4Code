package main

import "fmt"

func main() {

	var s ,t = "", ""
	fmt.Scan(&s, &t)

	x := 0
	for i := 0; i < len(s); i++{
		if s[i] != t[i] {
			x += 1
		}
	}

	fmt.Printf("%v", x)

}


