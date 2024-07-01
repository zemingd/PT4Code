package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	
	a := make([]int, n)
	drinks := make(map[int]int)
	
	b := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		fmt.Scan(&b)
		drinks[a[i]] = b
	}
	
	sort.Ints(a)
	
	ans := 0
	for i := 0; i < n; i++ {
		if m <= 0 {
			break
		}
		buy := min(drinks[a[i]], m)
		ans += buy * a[i]
		m -= buy
	}
	fmt.Println(ans)
}

func min(num1, num2 int)int {
	if num1 < num2 {
		return num1
	}
	return num2
}