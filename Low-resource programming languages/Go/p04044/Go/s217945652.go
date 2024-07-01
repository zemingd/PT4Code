package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	S := make([]string, N)

	for i := range S {
		fmt.Scan(&S[i])
	}
	sort.Strings(S)
	fmt.Println(strings.Join(S, ""))
}
