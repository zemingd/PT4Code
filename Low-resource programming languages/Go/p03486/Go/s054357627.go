package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	arr_s := strings.Split(s, "")
	arr_t := strings.Split(t, "")
	sort.Sort(sort.StringSlice(arr_s))
	sort.Sort(sort.Reverse(sort.StringSlice(arr_t)))

	judge := 0
	for i, e := range arr_s {
		if e < arr_t[i] {
			judge = 1
			break
		} else if e > arr_t[i] {
			judge = -1
			break
		}
	}
	switch judge {
	case 0:
		if len(arr_s) < len(arr_t) {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	case 1:
		fmt.Println("Yes")
	case -1:
		fmt.Println("No")
	}
}
