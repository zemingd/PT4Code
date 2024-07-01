package main

import "fmt"

var s string

func main() {
	fmt.Scanf("%s", &s)
	a := make([]string, len(s))
	for i := range s {
		a[i] = s[i : i+1]
	}
	fmt.Println(fix(a))
}

func fix(a []string) int {
	// fmt.Printf("fix %q\n", a)
	best := 0
	for i := 0; i < len(a)-1; i++ {
		if a[i] == a[i+1] {
			if i-1 > 0 {
				n := fix(merge(a, i-1))
				if best < n {
					best = n
				}
			}
			n := fix(merge(a, i))
			if best < n {
				best = n
			}
			if i+1 < len(a)-1 {
				n := fix(merge(a, i+1))
				if best < n {
					best = n
				}
			}
			return best
		}
	}

	return len(a)
}

func merge(a []string, i int) []string {
	return append(append(append([]string{}, a[:i]...), a[i]+a[i+1]), a[i+2:]...)
}
