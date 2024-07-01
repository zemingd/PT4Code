package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	count := 0
	for _, a := range as {
		for a%2 == 0 {
			count++
			a /= 2
		}
	}

	fmt.Println(count)
}
