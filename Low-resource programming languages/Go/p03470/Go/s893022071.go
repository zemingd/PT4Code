package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	slice := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&slice[i])
	}

	m := make(map[int]bool)
	uniq := []int{}

	for _, v := range slice {
		num, _ := strconv.Atoi(fmt.Sprintf("%d", v))
		if !m[num] {
			m[num] = true
			uniq = append(uniq, num)
		}
	}

	fmt.Println(len(uniq))
}
