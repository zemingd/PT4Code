package main

import (
	"fmt"
)

func main() {
	min, sum := 10, 0
	time := make([]int, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&time[i])
		t := (time[i] % 10)
		if t != 0 && t < min {
			min = t
		}
		if t == 0 {
			sum += time[i]
		} else {
			sum += time[i] + 10 - t
		}
	}

	fmt.Println(sum - (10 - min))
}
