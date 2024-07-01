package main

import (
	"fmt"
	"sort"
	"strings"
)

func input() string {
	var N, L int
	fmt.Scanf("%d %d", &N, &L)
	xarr := make([]string, N)
	for index := 0; index < N; index++ {
		fmt.Scanf("%s", &xarr[index])
	}
	sort.Strings(xarr)
	s := strings.Join(xarr, "")
	return s
}

func main() {
	c := input()
	fmt.Println(c)
}