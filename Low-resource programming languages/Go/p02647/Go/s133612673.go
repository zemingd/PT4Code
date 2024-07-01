package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, 0)
	for i := 0; i < n; i += 1 {
		var tmp int
		fmt.Scan(&tmp)
		a = append(a, tmp)
	}

	for i := 0; i < k; i += 1 {
		a = f(a, n)
	}

	result := make([]string, 0)
	for i := 0; i < n; i += 1 {
		tmp := strconv.Itoa(a[i])
		result = append(result, tmp)
	}
	fmt.Println(strings.Join(result, " "))
}

func f(a []int, n int)[]int {
	result := make([]int, 0)
	for x := 0; x < n; x += 1 {
		b := 0
		for j := 0; j < n; j += 1 {
			d := float64(a[j])
			if (float64(j) - d - 0.5) <= float64(x) && float64(x) <= (float64(j) + d + 0.5) {
				b += 1
			}
		}
		result = append(result, b)
	}
	return result
}
