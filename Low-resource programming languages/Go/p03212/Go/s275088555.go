package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

var num []int

func dfs(step int, s string) {
	if step >= 3 {
		if strings.Count(s, "3") > 0 && strings.Count(s, "5") > 0 && strings.Count(s, "7") > 0 {
			v, _ := strconv.Atoi(s)
			num = append(num, v)
		}
		if step == 9 {
			return
		}
	}
	for i := 0; i < len("357"); i++ {
		dfs(step+1, s+string("357"[i]))
	}
}

func main() {
	var N int
	fmt.Scan(&N)
	dfs(0, "")
	sort.Ints(num)
	// fmt.Println("len(num)", len(num), "num[0:10]", num[0:10])
	ans := 0
	for i := 0; i < len(num); i++ {
		if num[i] <= N {
			ans++
		}
	}
	fmt.Println(ans)
}
