package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(Calc(s))
}
func Calc(s string) string {
	if s == "abc" {
		return "ARC"
	} else {
		return "ABC"
	}
}
