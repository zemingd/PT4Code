package main

import "fmt"

func duplicate(a []int) bool {
	m := make(map[int]bool)
	for i := 0; i < len(a); i++ {
		if _, ok := m[a[i]]; ok {
			return true
		}
		m[a[i]] = true
	}
	return false
}

func main() {
	var s int
	fmt.Scan(&s)

	a := []int{s}

	for i := 0; !duplicate(a); i++ {
		if a[i]%2 == 0 {
			a = append(a, a[i]/2)
		} else {
			a = append(a, a[i]*3+1)
		}
	}
	fmt.Println(len(a))
}
