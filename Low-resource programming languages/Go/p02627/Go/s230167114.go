package main

import "fmt"

func main() {
	var alpha string
	fmt.Scanf("%s", &alpha)
	
	if alpha >= "a" && alpha <= "z" {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
