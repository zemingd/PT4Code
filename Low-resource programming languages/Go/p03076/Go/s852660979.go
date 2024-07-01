package main

import "fmt"

func main() {
	ar := make([]int, 5)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	var sum, max int
	for _, v := range ar {
		m := v % 10
		if m == 0 {
			sum += v
		} else {
			sum += (v/10 + 1) * 10
			up := 10 - m
			if max < up {
				max = up
			}
		}
	}
	fmt.Println(sum - max)
}
