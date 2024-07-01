package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	chars := strings.Split(s, "")
	combs := Combinations(chars)
	sort.Strings(combs)
	fmt.Println(combs[k-1])
}

func Combinations(chars []string) []string {
	result := map[string]bool{}
	for i := 0; i < len(chars); i++ {
		str := chars[i]
		result[str] = true
		for j := i + 1; j < len(chars); j++ {
			if i == j {
				continue
			}
			str += chars[j]
			result[str] = true
		}
	}
	return keys(result)
}

func keys(m map[string]bool) []string {
	var ks []string
	for k, _ := range m {
		ks = append(ks, k)
	}
	return ks
}
