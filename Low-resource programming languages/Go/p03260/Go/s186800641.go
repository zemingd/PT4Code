package main

import "fmt"

func main() {
	var a, b int
	for i := 1; i <= 3; i++ {
		if a * b * i % 2 == 1 {
			fmt.Println("Yes")
			return
		}
	} 
	fmt.Println("No")
}
