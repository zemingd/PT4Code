// https://atcoder.jp/contests/abc124/tasks/abc124_c

package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	var diff int
	for i, c := range s {
		m := '0'
		if i%2 == 1 {
			m = '1'
		}

		if c != m {
			diff++
		}
	}

	if len(s)-diff < diff {
		diff = len(s) - diff
	}

	fmt.Println(diff)
}
