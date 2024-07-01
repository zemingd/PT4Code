package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]string, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	m := make(map[string]bool)
	uniq := [] string{}

	for _, ele := range a {
		if !m[ele] {
			m[ele] = true
			uniq = append(uniq, ele)
		}
	}

	fmt.Printf("%v", len(uniq))
}