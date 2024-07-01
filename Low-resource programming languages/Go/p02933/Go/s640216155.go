package main

import "fmt"

func main() {
	var a int
	var s string

	fmt.Scanln(&a)
	fmt.Scanln(&s)

	fmt.Println(logic(a, s))
}

func logic(a int, s string) string {
	if a >= 3200 {
		return s
	}
	return "red"
}