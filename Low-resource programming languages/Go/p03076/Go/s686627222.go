package main

import "fmt"

func main() {
	xi := readMultiple(5)
	tens := 0
	ones := 10
	for _, v := range xi {
		if v%10 == 0 {
			tens += v / 10
		} else {
			if v%10 < ones {
				ones = v % 10
			}
			tens += v/10 + 1
		}
	}
	fmt.Println((tens-1)*10 + ones)
}

func readMultiple(n int) []int {
	xi := []int{}
	for i := 0; i < n; i++ {
		j := 0
		fmt.Scan(&j)
		xi = append(xi, j)
	}
	return xi
}
