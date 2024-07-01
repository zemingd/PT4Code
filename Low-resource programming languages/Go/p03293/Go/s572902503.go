package main

import (
	"fmt"
	"sort"
)

func stringSort(s1 string) (s2 string) {
	s2 = ""
	stmp := make([]string, len(s1))
	for i, x := range s1 {
		stmp[i] = string(x)
	}
	sort.Strings(stmp)
	for _, x := range stmp {
		s2 += x
	}
	return
}

func main() {
	var s1, s2 string
	fmt.Scan(&s1, &s2)
	if stringSort(s1) == stringSort(s2) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
