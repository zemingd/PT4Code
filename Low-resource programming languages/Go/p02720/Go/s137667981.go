package main

import (
	"fmt"
	"sort"
)

var Lunluns map[int]bool

func main() {
	var K int
	fmt.Scan(&K)
	Lunluns = make(map[int]bool)
	for i := 1; i <= 10; i++ {
		genLunlun(i)
	}
	keys := []int{}
	for k, _ := range Lunluns {
		keys = append(keys, k)
	}
	sort.Ints(keys)
	fmt.Println(keys[K-1])
}

func genLunlun(n int) {
	if n <= 3234566667 {
		Lunluns[n] = true
		last := n % 10
		if last != 0 {
			genLunlun(n*10 + last - 1)
		}
		genLunlun(n*10 + last)
		if last != 9 {
			genLunlun(n*10 + last + 1)
		}
	}
}
