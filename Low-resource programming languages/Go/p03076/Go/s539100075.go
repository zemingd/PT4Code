package main

import "fmt"

func main() {
	ar := make([]int, 5)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	var sum, min int
	min = -1
	for _, v := range ar {
		m := v % 10
		if m == 0 {
			sum += v
		} else {
			sum += (v/10 + 1) * 10
			if min == -1 {
				min = m
			} else if m < min {
				min = m
			}
		}
	}
	if min > 0 {
		sum -= 10 - min
	}
	fmt.Println(sum)
}
