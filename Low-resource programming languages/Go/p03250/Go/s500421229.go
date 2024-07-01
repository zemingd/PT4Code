package main

import (
	"fmt"
	"sort"
)

func main() {
	L := make([]int, 3)
	fmt.Scan(&L[0], L[1], &L[2])

	sort.Ints(L)
	ans := L[0] + L[1] + L[2]*10

	fmt.Println(ans)
}
