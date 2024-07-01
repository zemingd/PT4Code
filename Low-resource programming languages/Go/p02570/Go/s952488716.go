package main

import "fmt"

func main() {
	var d int
	var t int
	var s int
	fmt.Scan(&d)
	fmt.Scan(&t)
	fmt.Scan(&s)
	ans := d - t*s
	if ans > 0 {
		fmt.Print("No")
	} else {
		fmt.Print("Yes")
	}
}
