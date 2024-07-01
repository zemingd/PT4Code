package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i < 3; i++ {
		if n%10 == 7 {
			fmt.Println("Yes")
			return
		}
		n /= 10
	}
	fmt.Println("No")
}