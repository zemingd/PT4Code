package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	c := 4
	d := 7

	buy := "No"
	for _, v := range []int{c, d, c + d} {
		if n%v == 0 {
			buy = "Yes"
			break
		}
		n -= n / v
	}

	fmt.Println(buy)
}
