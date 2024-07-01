package main

import (
	"fmt"
	"sort"
)

func main() {
	var str string
	var k int
	fmt.Scan(&str, &k)
	mp := make(map[string]int)
	arr := make([]string, 0)
	for i := 0; i < len(str); i++ {
		for j := 1; j <= 5 && i + j <= len(str); j ++ {
			key := str[i:i + j]
			_, ok := mp[key]
			if !ok {
				mp[key] = 1
				arr = append(arr, key)
			}
		}
	}
	sort.Strings(arr)
	fmt.Println(arr[k - 1])
}