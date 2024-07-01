package main

import (
	"fmt"
)

func rot(s1 string) (s2 string) {
	s2 = ""
	var last string
	for i, x := range s1 {
		if i == 0 {
			last = string(x)
		}
		if i != 0 {
			s2 += string(x)
		}
	}
	s2 += last
	return
}

func main() {
	var s1, s2 string
	var res bool = false
	fmt.Scan(&s1, &s2)
	for i := 0; i < len(s1); i++ {
		s1 = rot(s1)
		if s1 == s2 {
			res = true
		}
	}
	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
