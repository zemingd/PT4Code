package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	s1a := make([]rune, b)
	s2a := make([]rune, a)
	var c rune
	c = []rune(fmt.Sprintf("%d", a))[0]
	for i := 0; i < b; i++ {
		s1a[i] = c
	}
	c = []rune(fmt.Sprintf("%d", b))[0]
	for i := 0; i < a; i++ {
		s2a[i] = c
	}
	s1 := string(s1a)
	s2 := string(s2a)
	if s1 < s2 {
		fmt.Printf("%s\n", s1)
	} else {
		fmt.Printf("%s\n", s2)
	}
}
