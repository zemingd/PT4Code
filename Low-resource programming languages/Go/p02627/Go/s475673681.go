package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scanf("%s\n", &a)

	if strings.ToLower(a) ==a{
		fmt.Printf("a")
	}else{
		fmt.Println("A")
	}
}