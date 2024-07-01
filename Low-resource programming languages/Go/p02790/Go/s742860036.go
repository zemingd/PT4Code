package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	s := ""
	if a == b {
		for i := 0; i < a; i++ {
			s += fmt.Sprintf("%d", a)
		}
	} else if a > b {
		for i := 0; i < a; i++ {
			s += fmt.Sprintf("%d", b)
		}
	} else {
		for i := 0; i < b; i++ {
			s += fmt.Sprintf("%d", a)
		}
	}
	fmt.Println(s)
}
