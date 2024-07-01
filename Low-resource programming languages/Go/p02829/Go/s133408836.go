package main

import "fmt"

func remove(numbers []int, search int) []int {
	result := []int{}
	for _, num := range numbers {
		if num != search {
			result = append(result, num)
		}
	}
	return result
}

func main() {
	var n, x int
	fmt.Scan(&n, &x)

	a := []int{1, 2, 3}
	a = remove(a, n)
	a = remove(a, x)
	fmt.Println(a[0])
}
