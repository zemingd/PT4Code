package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	L := []int{A + B, A - B, A * B}
	sort.Ints(L)
	ans := L[2]

	fmt.Println(ans)
}