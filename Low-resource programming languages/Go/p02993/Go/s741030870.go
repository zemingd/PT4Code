package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	f := true
	
	for i := 0; i < 3; i++ {
		if string(s[i]) == string(s[i+1]) {
			f = false
		}
	}
	
	if f {
		fmt.Println("Good")
	} else {
		fmt.Println("Bad")
	}
}
