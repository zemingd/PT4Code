package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	a := s[0:1]
	b := s[1:2]
	c := s[2:3]
	res := 0
	if a == "R"|| b == "R"|| c == "R" {
		res = 1
	}
	if a == "R" && b == "R"{
		res = 2
	}
	if b == "R" && c == "R"{
		res = 2
	}
	
	if a == "R" && a == b && a == c{
		res = 3
	}

	fmt.Println(res)


}
