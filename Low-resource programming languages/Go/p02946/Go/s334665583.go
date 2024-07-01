package main

import (
	"fmt"
	"sort"
)

func main() {
	var k, x int
	ans := []int{}
	fmt.Scan(&k, &x)

	ans = append(ans, x)
	for i:= 1; i<k ;i++ {
		if x + i > 100 {
			break
		}
		ans = append(ans, x + i)
	}
	for i:= -1; i > -k ; i-- {
		if x + i < -99 {
			break
		}
		ans = append(ans, x + i)
	}
	sort.Ints(ans)
	for i, v:= range ans {
		if i == 0 {
			fmt.Printf("%d", v)
		} else {
			fmt.Printf(" %d", v)
		}
	}
}