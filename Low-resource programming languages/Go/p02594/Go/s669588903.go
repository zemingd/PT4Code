package main

import (
	f "fmt"
)

func main() {
	var n int
	f.Scan(&n)

	if n >= 30 {
		f.Println("Yes")
	} else {
		f.Println("No")
	}
}
