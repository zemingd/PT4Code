package main

import "fmt"
import "sort"

var N, K int

func main() {
	fmt.Scan(&N, &K)
	var a, b int
	data := make(map[int]int)
	total := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&a, &b)
		data[a] += b
	}
	keys := make([]int, 0, 0)
	for key, _ := range data {
		keys = append(keys, key)
	}
	sort.Ints(keys)
	for _, num := range keys {
		total += data[num]
		if total >= K {
			fmt.Println(num)
			break
		}
	}
}
