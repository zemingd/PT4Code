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
	var t [][]string
	for i := 0; i < n; i++ {
		A := strings.Split(sAry[i], "")
		sort.Strings(A)
		t = append(t, A)
	}
	ret := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			var flg = true
			for k := 0; k < 10; k++ {
				if t[i][k] != t[j][k] {
					flg = false
				}
			}
			if flg {
				ret++
			}
		}
	}
	fmt.Println(ret)
}
