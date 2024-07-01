package main

import (
	"fmt"
)

func sort(list []rune, desc bool) {
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


func sortRune(s string, desc bool) string {
	r := []rune(s)
	sort(r, desc)
	return string(r)
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := sortRune(s, false)
	tt := sortRune(t, true)

	fmt.Println(ss, tt)

	if ss < tt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}