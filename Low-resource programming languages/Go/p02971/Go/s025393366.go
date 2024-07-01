package main

import "fmt"

func main() {
	var n, m1, m2 int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if a[i] > m1 {
			m1, m2 = a[i], m1
			continue
		}
		if a[i] > m2 {
			m2 = a[i]
		}
	}

	for _, v := range a {
		if v == m1 {
			fmt.Println(m2)
		} else {
			fmt.Println(m1)
		}
	}
}
