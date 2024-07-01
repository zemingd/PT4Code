package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ans := "No"
	a, b := N%4, N%7
	if a%7 == 0 || b%4 == 0 {
		ans = "Yes"
	}
	fmt.Println(ans)
}
