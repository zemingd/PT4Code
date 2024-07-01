package main

import "fmt"

func main() {
	var x int
	var a int

	_, err := fmt.Scan(&x, &a)
	if err != nil {
		fmt.Println("fmt Scan error:", err)
		return
	}

	if x < a {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}
