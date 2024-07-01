package main

import (
	f "fmt"
)

func main() {
	var a, b, c int

	f.Scan(&a, &b, &c)

	if a == b && a != c {
		f.Println("Yes")
	} else if a == c && a != b {
		f.Println("Yes")
	} else if b == c && b != a {
		f.Println("Yes")
	} else {
		f.Println("No")
	}
}
