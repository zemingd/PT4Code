package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}
	sort.Sort(sort.IntSlice(as))

	ans := 0
	tmp := ""
	tmpnum := 0
	for i, a := range as {
		if tmp == a {
			tmpnum++
			continue
		}

		tmp = a
		if tmpnum%2 != 0 {
			ans++
		}
	}
	fmt.Print(ans)
}
