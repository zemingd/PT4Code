package main

import (
	"fmt"
	"sort"
)

func main() {

	var s string
	var k int

	fmt.Scan(&s)
	fmt.Scan(&k)

	slice := generateSubStringSlice(s)

	sort.Strings(slice)
	fmt.Println(slice[k-1])
}

func generateSubStringSlice(s string) []string {
	var pat map[string]int
	for i := 1; i <= len(s); i++ {
		for j := 0; j < len(s); j++ {
			if j+i > len(s) {
				break
			}
			sub := s[j:(j + i)]
			//fmt.Println(sub)
			pat[sub] = 1
		}
	}
	//fmt.Println(slice)
	var slice []string

	for k := range pat {
		slice = append(slice, k)
	}

	return slice
}
