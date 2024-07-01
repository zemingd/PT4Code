package main

import (
	"fmt"
	"sort"
	"strings"
)

func sortString(s string, reverse bool) string {
	sl := strings.Split(s, "")
	if reverse == true {
		sort.Strings(sl)
	} else {
		sort.Sort(sort.Reverse(sort.StringSlice(sl)))
	}
	return strings.Join(sl, "")
}

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	//fmt.Println(sortString(s, true))
	//fmt.Println(sortString(t, false))
	if sortString(s, true) < sortString(t, false) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
