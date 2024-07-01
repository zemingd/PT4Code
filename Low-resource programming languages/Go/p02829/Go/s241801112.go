package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A)
	fmt.Scan(&B)
	list := []int{1, 2, 3}
	list = remove(list, A)
	list = remove(list, B)
	fmt.Println(list[0])
}

// スライスの中身削除
func remove(ints []int, search int) []int {
	result := []int{}
	for _, v := range ints {
		if v != search {
			result = append(result, v)
		}
	}
	return result
}
