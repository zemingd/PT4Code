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
	sort.Strings(arr_s)
	sort.Sort(sort.Reverse(sort.StringSlice(arr_t)))

	s = strings.Join(arr_s, "")
	t = strings.Join(arr_t, "")

	if s < t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
