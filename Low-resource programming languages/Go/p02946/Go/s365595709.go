package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var k, x int

	fmt.Scanf("%d %d", &k, &x)

	fmt.Println(toString(logic(k, x), " "))
}

func logic(k, x int) []int {
	min := -1000000
	max := 1000000
	result := []int{x}

	for i := 1; i < k; i++ {
		a := x + i
		b := x - i
		if max >= a && min <= a {
			result = append(result, a)
		}
		if max >= b && min <= b {
			result = append(result, b)
		}
	}
	sort.Ints(result)
	return result
}

func toString(nums []int, delim string) string {
	return strings.Trim(strings.Replace(fmt.Sprint(nums), " ", delim, -1), "[]")
}
