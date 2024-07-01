package main

import (
	"fmt"
	"sort"
)

var s string
var K int

func main() {
	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &K)

	ss := []rune(s)

	ignore := make(map[int]bool)
	m := make(map[string]bool)

	for {
		min := 0

		for i := 0; i < len(s); i++ {
			if !ignore[i] {
				min = i
				break
			}
		}

		for i := min; i < len(s); i++ {
			if ss[i] < ss[min] && !ignore[i] {
				min = i
			}
		}

		for i := 0; i < len(s); i++ {
			if ss[min] == ss[i] {
				ignore[i] = true
				for j := i; j < len(s); j++ {
					m[string(ss[i:j+1])] = true
				}
			}
		}

		if len(m) >= K {
			keys := make([]string, 0)
			for k := range m {
				keys = append(keys, k)
			}
			sort.Strings(keys)
			fmt.Println(keys[K-1])
			break
		}
	}
}
