package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n)
	max1, max2 := 0, 0
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
		if as[i] > max1 {
			max1, max2 = as[i], max1
			continue
		}
		if as[i] > max2 {
			max2 = as[i]
		}
	}

	for _, a := range as {
		if a == max1 {
			fmt.Println(max2)
			continue
		}
		fmt.Println(max1)
	}
}
