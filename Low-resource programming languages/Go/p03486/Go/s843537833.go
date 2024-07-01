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
	for i := 0; i < len(sa); i++ {
		for j := 0; j < len(ta); j++ {
			if sa[i] < ta[j] {
				fmt.Println("Yes")
				return
			}
			if sa[i] == ta[j] {
				// sが最後のとき
				if i+1 == len(sa) {
					// tが最後のとき
					if j+1 == len(ta) {
						fmt.Println("No")
					} else {
						fmt.Println("Yes")
					}
					return
				} else {
					if j+1 == len(ta) {
						fmt.Println("No")
						return
					}
				}
				ta = append(ta[:j], ta[j+1:]...)
				break
			}
		}
		fmt.Println(ta)

	}
	fmt.Println("No")
}