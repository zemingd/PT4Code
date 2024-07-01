package main

import "fmt"

func main() {
	var a int
	var txt string

	fmt.Scanf("%d\n %s", &a, &txt)

	if a < 3200 {
		fmt.Printf("red\n")
	} else {
		fmt.Printf("%s\n", txt)
	}
}