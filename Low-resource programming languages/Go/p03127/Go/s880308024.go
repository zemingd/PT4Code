package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	aSlice := make([]int, n)
	for i := range aSlice {
		fmt.Scan(&aSlice[i])
	}

	sort.Ints(aSlice)

	aMin := aSlice[0]
	ans := -1
	for i := aMin; i > 0; i-- {
		if aMin%i == 0 {
			flagPass := true // iが（最大）公約数かどうか
			for j := 1; j < n; j++ {
				if aSlice[j]%i != 0 {
					flagPass = false
					break
				}
			}
			if flagPass == true {
				ans = i
				break
			}
		}
	}
	fmt.Println(ans)
}
