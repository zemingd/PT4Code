package main

import (
	"fmt"
	"sort"
	"strings"
)

func sortString(w string) string {
	s := strings.Split(w, "")
	sort.Strings(s)
	return strings.Join(s, "")
}

func reverseStr(s string) string {

	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func main() {
	// Code for B - Two Anagrams
	var s, t string
	fmt.Scanf("%s\n%s", &s, &t)

	s = sortString(s)
	t = reverseStr(sortString(t))
	if s < t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
