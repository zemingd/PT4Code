package main

import "fmt"

func main() {
	var n int
	fmt.Scanln(&n)

	for a := 0; a <= 20; a++ {
		for b := 0; b <= (n-a*4)/7; b++ {
			if a*4+b*7 == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
