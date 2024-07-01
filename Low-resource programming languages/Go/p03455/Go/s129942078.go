package main

import "fmt"

func main ()  {
	var a,b int
	c := a * b
	if c % 2 == 0 {
		fmt.Printf("Even")
	} else {
		fmt.Printf("Odd")
	}
}