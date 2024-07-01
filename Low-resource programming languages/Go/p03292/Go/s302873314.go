package main

import (
	"fmt"
	"sort"
)

func main() {
	var ans int
	as := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&as[i])
	}
	sort.Sort(sort.IntSlice(as))
	for i, _ := range as {
		if i == 0 {
			continue
		}
		ans += as[i] - as[i-1]
	}
	fmt.Println(ans)
}