package main

import (
	"fmt"
)

// go run ./main.go < in

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var houses []int
	for i := 0; i < b; i++ {
		var x int
		fmt.Scan(&x)
		houses = append(houses, x)
	}

	distance := houses[len(houses)-1] - houses[0]
	for i, v := range houses {
		if i == 0 {
			continue
		}
		tmp := a + houses[i-1] - v
		if tmp < distance {
			distance = tmp
		}
	}
	fmt.Println(distance)

}