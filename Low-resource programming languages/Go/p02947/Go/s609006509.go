package main

import (
	"fmt"
	"reflect"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var sSlice []map[string]int

	for i := 0; i < n; i++ {
		var s string
		fmt.Scanf("%s", &s)

		stringMap := map[string]int{}
		for _, v := range s {
			stringMap[string(v)]++
		}
		sSlice = append(sSlice, stringMap)
	}

	var count int
	for i := 0; i < len(sSlice)-1; i++ {
		for j := i + 1; j < len(sSlice); j++ {
			r := reflect.DeepEqual(sSlice[i], sSlice[j])
			if r {
				count++
			}
		}
	}

	fmt.Println(count)
}
