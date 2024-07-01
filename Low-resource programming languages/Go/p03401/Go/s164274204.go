package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n+2)
	allCost := 0
	position := 0
	for i := 1; i <= n; i++ {
		fmt.Scan(&a[i])
		allCost += int(math.Abs(float64(position) - float64(a[i])))
		fmt.Println(allCost, a)
		position = a[i]
	}
	allCost += int(math.Abs(float64(position) - float64(0)))
	fmt.Println(allCost, a)

	for i := 1; i <= n; i++ {
		diff := math.Abs(float64(a[i-1])-float64(a[i])) + math.Abs(float64(a[i])-float64(a[i+1])) - math.Abs(float64(a[i-1]) - float64(a[i+1]))
		ans := allCost - int(diff)
		fmt.Println(ans)

	}

}