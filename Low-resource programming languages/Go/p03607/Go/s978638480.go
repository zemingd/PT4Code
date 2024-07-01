package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	array := make([]int, 0)
	var a int
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		array = append(array, a)
	}

	sort.Sort(sort.IntSlice(array))

	res := 0
	i := 0
	for i < N {
		cur := array[i]
		count := 0
		for i < N && array[i] == cur {
			i++
			count++
		}
		res += count % 2
	}

	fmt.Println(res)
}
