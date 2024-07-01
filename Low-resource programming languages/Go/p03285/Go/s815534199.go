package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := "No"
	for x := 0; x <= 25; x++ {
		for y := 0; y <= 14; y++ {
			if 4*x+7*y == n {
				ans = "Yes"
				break
			}
		}
	}
	fmt.Println(ans)
}
