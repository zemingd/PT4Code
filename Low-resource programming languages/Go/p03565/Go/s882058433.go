package main

import (
	"fmt"
)

func findHintMatchIndex(sp, t string) int {
	for i := 0; i < (len(sp) - len(t)); i++ {
		match := true
		for j := 0; j < len(t); j++ {
			if sp[i+j] != '?' && sp[i+j] != t[j] {
				match = false
				break
			}
		}

		if match {
			return i
		}
	}
	return -1
}

func main() {
	var sp, t string
	fmt.Scan(&sp)
	fmt.Scan(&t)

	mi := findHintMatchIndex(sp, t)
	if mi == -1 {
		fmt.Println("UNRESTORABLE")
		return
	}

	ans := []byte(sp)
	// replace "?" to hint string
	for i := 0; i < len(t); i++ {
		ans[mi+i] = t[i]
	}

	// ans = bytes.ReplaceAll(ans, []byte{'?'}, []byte{'a'})
	for i := 0; i < len(ans); i++ {
		if ans[i] == '?' {
			ans[i] = 'a'
		}
	}

	fmt.Println(string(ans))
}
