package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m, k, beforFood, count, ans int
	allFood := []int{}
	fmt.Scanf("%d %d", &n, &m)
	for i := 0; i < n; i++ {
		fmt.Scan(&k)
		foods := make([]int, k)
		for j := 0; j < k; j++ {
			fmt.Scan(&foods[j])
		}
		allFood = append(allFood, foods...)
	}
	if n == 1 {
		fmt.Println(len(allFood))
		return
	}
	sort.Sort(sort.IntSlice(allFood))
	for _, food := range allFood {
		if beforFood == food {
			count++
			if count == n {
				ans++
			}
		} else {
			count = 1
		}
		beforFood = food
	}
	fmt.Println(ans)
}