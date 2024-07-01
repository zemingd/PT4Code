package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	sArr := strings.Split(s, "")
	tArr := strings.Split(t, "")
	sort.Strings(sArr)
	sort.Strings(tArr)
	ReverseStrings(tArr)
	
	if strings.Join(sArr, "") < strings.Join(tArr, "") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func ReverseStrings(s []string) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}
