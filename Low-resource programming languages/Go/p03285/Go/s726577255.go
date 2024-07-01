package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := "No"
	for n >= 0 {
		if n%4 == 0 {
			ans = "Yes"
			break
		}
		n -= 7
	}
	fmt.Println(ans)
}