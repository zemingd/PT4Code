package main

import "fmt"

func main() {
	var t int
	fmt.Scan(&t)
	if t < 30 {
		fmt.Print("No")
		return
	}
	fmt.Print("Yes")
}
