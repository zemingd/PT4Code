package main

import (
	f "fmt"
)

func main() {

	var n, m int
	f.Scan(&n, &m)

	if n == m {
		f.Println("Yes")
	} else {
		f.Println("No")
	}

}
