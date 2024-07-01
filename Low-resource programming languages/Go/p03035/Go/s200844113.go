package main

import "fmt"

func main() {
	var A, B int

	fmt.Scan(&A, &B)

	if B%2 == 0 {
		if A >= 13 {
			fmt.Print(B)
		} else if A >= 6 && A <= 12 {
			fmt.Print(B / 2)
		} else if A <= 5 {
			fmt.Print("0")
		}
	}
}
