package main

import (
	"fmt"
)

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}
func main() {
	var N int
	var S string
	fmt.Scanf("%d\n", &N)
	fmt.Scanf("%s\n", &S)

	rs := []rune(S)
	m := [3]map[int]bool{{}, {}, {}}
	for i, s := range rs {
		if string(s) == "R" {
			m[0][i] = true
		} else if string(s) == "G" {
			m[1][i] = true
		} else {
			m[2][i] = true
		}
	}
	minus := 0
	for i := 0; i < N; i++ {
		si := rs[i]
		var tm, tm2 map[int]bool
		if string(si) == "R" {
			tm, tm2 = m[1], m[2]
		} else if string(si) == "G" {
			tm, tm2 = m[0], m[2]
		} else {
			tm, tm2 = m[0], m[1]
		}
		for j := range tm {
			if i >= j {
				continue
			}
			if _, e := tm2[2*j-i]; e {
				minus++
				continue
			}
		}
		for j := range tm2 {
			if i >= j {
				continue
			}
			if _, e := tm[2*j-i]; e {
				minus++
				continue
			}
		}

	}
	fmt.Println(len(m[0])*len(m[1])*len(m[2]) - minus)

}
