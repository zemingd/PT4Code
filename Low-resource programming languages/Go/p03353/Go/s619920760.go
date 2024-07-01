// ProblemURL : https://atcoder.jp/contests/abc097/tasks/arc097_a
// ---------------------------------------------
package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	n := len(s)

	substrs := make([]string, 0, n*n)
	m := make(map[string]bool, n*n)
	for i := 0; i < n; i++ {
		for j := i + 1; j < i+6 && j < n+1; j++ {
			substr := s[i:j]

			_, alreadyExists := m[substr]
			if alreadyExists {
				continue
			}

			substrs = append(substrs, substr)
			m[substr] = true
		}
	}

	sort.Strings(substrs)
	fmt.Println(substrs[k-1])
}
