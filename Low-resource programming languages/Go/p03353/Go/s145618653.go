package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)

	N := len(s)

	L := make([]string, 5*N)

	for i := 1; i <= K; i++ {
		for j := 0; j <= N-i; j++ {
			L = append(L, s[j:j+i])
		}
	}
	sort.Strings(L)

	index, cnt := 0, 0
	for cnt < K {
		if L[index+1] != L[index] {
			cnt++
		}
		index++
	}
	fmt.Println(L[index])
}
