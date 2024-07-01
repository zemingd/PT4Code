package main

import "fmt"

func uniqValue(arr []int) []int {
	m := make(map[int]bool)
	var uniq []int

	for _, v := range arr {
		if !m[v] {
			m[v] = true
			uniq = append(uniq, v)
		}
	}
	return uniq
}

func main() {
	var N int
	fmt.Scan(&N)
	arr := make([]int, N)

	for i:= 0;  i < N; i++ {
		fmt.Scan(&arr[i])
	}

	result := uniqValue(arr)

	fmt.Println(len(result))
}