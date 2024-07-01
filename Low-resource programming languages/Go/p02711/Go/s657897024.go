package main

import "fmt"

func main() {
	var N string
	fmt.Scan(&N)
	if N[len(N)-1] == '7' {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
