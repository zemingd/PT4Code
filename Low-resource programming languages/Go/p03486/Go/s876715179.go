package main

import (
	"fmt"
)

func sortRune(list []rune, desc bool) {
	eNum := len(list)
	for i := eNum; i > 0; i-- {
		for j := 0; j < i-1; j++ {
			if desc {
				if list[j] < list[j+1] {
					list[j], list[j+1] = list[j+1], list[j]
				}
			} else {
				if list[j] > list[j+1] {
					list[j], list[j+1] = list[j+1], list[j]
				}
			}
		}
	}
}


func sort(s string, desc bool) string {
	r := []rune(s)
	sortRune(r, desc)
	return string(r)
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := sort(s, false)
	tt := sort(t, true)

	if ss < tt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}