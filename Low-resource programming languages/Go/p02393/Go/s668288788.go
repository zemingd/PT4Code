package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

func numArrayToString(iary []int) []string {
	ary := make([]string, len(iary))
	for i, v := range iary {
		ary[i] = strconv.Itoa(v)
	}
	return ary
}

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	ary := []int{a, b, c}
	sort.Sort(sort.IntSlice(ary))

	fmt.Println(strings.Join(numArrayToString(ary), " "))
}

