package main

import (
	"fmt"
)

func main() {
	cache := map[int]struct{}{}
	var n int
	fmt.Scanf("%d\n", &n)
	result := "YES"
	for i := 0; i < n; i ++ {
		var v int
		fmt.Scanf("%d", &v)
		if _, exists := cache[v]; exists {
			result = "NO"
			break
		}
		cache[v] = struct{}{}
	}
	fmt.Println(result)
	
}