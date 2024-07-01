package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := "No"
	for n := range []int{1, 2, 3} {
		if a*b*n%2 == 1 {
			ans = "Yes"
			break
		}
	}
	fmt.Println(ans)
}