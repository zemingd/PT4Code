package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, l int
	fmt.Scan(&N)
	all := make([]int, N)
	ReadN(all, 0, N)

	l = N / 2
	m := N - 1
	for i := 0; i < len(all); i++ {
		da := remove(all, i)
		sort.Ints(da)
		fmt.Println(da[m-l])
	}
}

func ReadN(all []int, i, n int) {
	if n == 0 {
		return
	}
	if m, err := Scan(&all[i]); m != 1 {
		panic(err)
	}
	ReadN(all, i+1, n-1)

}

func Scan(a *int) (int, error) {
	return fmt.Scan(a)
}

func remove(ints []int, index int) []int {
	result := []int{}
	for i := 0; i < len(ints); i++ {
		if i != index {
			result = append(result, ints[i])
		}
	}
	return result
}
