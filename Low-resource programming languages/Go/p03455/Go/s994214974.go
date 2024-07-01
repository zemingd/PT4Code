package main

import "fmt"

func main ()  {
	var a,b int
	if (a * b) % 2 == 0 {
		fmt.Printf("Even")
	} else {
		fmt.Printf("Odd")
	}
}