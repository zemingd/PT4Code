package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	mp := map[string]bool{}
	sr := make([]string, 0, len(s)*k)
	for i := 0; i < len(s); i++ {
		for j := 0; j < k; j++ {
			if i+j < len(s) {
				if !mp[s[i:i+j+1]] {
					sr = append(sr, s[i:i+j+1])
					mp[s[i:i+j+1]] = true
				}
			}
		}
	}
	sort.Strings(sr)
	fmt.Println(sr[k-1])
}
