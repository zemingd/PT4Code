package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)
	if (d/s + d%s) <= t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
