package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	for i := 3; i >= 1; i-- {
		if S[i] == S[i-1] {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}