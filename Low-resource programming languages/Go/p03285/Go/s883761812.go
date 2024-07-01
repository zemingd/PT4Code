package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	for n > 0 {
		if n%4 == 0 {
			fmt.Println("Yes")
			return
		}
		n -= 7
	}
	fmt.Println("No")
}
