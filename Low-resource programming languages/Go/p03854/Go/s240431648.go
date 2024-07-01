package main

import (
	"fmt"
)

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

// Return the `n`-length string from the position `pos`.
func SubStr(s string, pos int, n int) string {
	runes := []rune(s)
	if pos+n >= len(runes) {
		return string(runes[pos:])
	} else {
		return string(runes[pos : pos+n])
	}
}

func main() {
	var s string
	fmt.Scan(&s)
	s = Reverse(s)

	patterns := []string{"dream", "dreamer", "erase", "eraser"}
	var rev_patterns []string
	for _, p := range patterns {
		rev_patterns = append(rev_patterns, Reverse(p))
	}

	i := 0
	for {
		found := false
		for _, p := range rev_patterns {
			// fmt.Println(SubStr(s, i, len(p)), p)
			// fmt.Println(SubStr(s, i, len(p)) == p)

			if SubStr(s, i, len(p)) == p {
				// 一致
				i += len(p)
				found = true
			}
		}
		if !found {
			break
		}
	}
	if i == len(s) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
