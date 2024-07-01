package main

import (
	"fmt"
	"sort"
	"strings"
)

func inputSlice(inputNums int) []string {
	var ary []string
	for i := 0; i < inputNums; i++ {
		var in string
		fmt.Scan(&in)
		ary = append(ary, in)
	}
	return ary
}

func main() {
	var n int
	fmt.Scan(&n)
	sAry := inputSlice(n)
	var ret int
	ret = 0

	m := map[string]int{}
	for i := 0; i < n; i++ {
		A := strings.Split(sAry[i], "")
		sort.Strings(A)
		s := strings.Join(A, "")
		m[s]++
	}

	for i := 0; i < n; i++ {
	}
	for key, _ := range m {
		if m[key] == 1 {
			delete(m, key)
		}
	}

	for {
		for key, _ := range m {
			m[key]--
			ret += m[key]
			if m[key] == 0 {
				delete(m, key)
			}
		}
		if len(m) == 0 {
			break
		}
	}
	fmt.Println(ret)
}
