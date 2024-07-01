package main

import "fmt"

func main() {
	var S, W int
	fmt.Scan(&S, &W)
	if W >= S {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}
