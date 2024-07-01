package main

import (
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	sa := make([]int, len(s))
	ta := make([]int, len(t))
	for i, v := range s {
		sa[i] = int(v)
	}
	for i, v := range t {
		ta[i] = int(v)
	}
	sort.Ints(sa)
	sort.Ints(ta)
	w := 0
	for i := 0; i < len(sa); i++ {
		for j := w; j < len(ta); j++ {
			if sa[i] < ta[j] {
				fmt.Println("Yes")
				return
			}
			if sa[i] == ta[j] {
				if i == len(sa)-1 && j < len(ta)-1 {
					fmt.Println("Yes")
					return
				}
				w = j + 1
			}
		}

	}
	fmt.Println("No")
}