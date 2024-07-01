package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	var answer string

	if a == b && a != c || a == c && a != b || b == c && b != a  {
		answer = "Yes"
	} else {
		answer = "No"
	}
	fmt.Println(answer)
}
