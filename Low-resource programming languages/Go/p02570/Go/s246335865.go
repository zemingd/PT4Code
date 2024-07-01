package main

import (
	"fmt"
)

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)
	if t*s >= d {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
