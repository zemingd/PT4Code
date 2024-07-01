package main

import "fmt"

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func main() {
	var n int
	fmt.Scan(&n)

	u := make([]int, n-1)
	v := make([]int, n-1)
	w := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&u[i], &v[i], &w[i])
	}
	o := make([]int, 2*n)
	e := make([]int, 2*n)
	for i := 0; i < n-1; i++ {
		if w[i]%2 == 0 {
			e = append(e, u[i], v[i])
		} else {
			o = append(o, u[i], v[i])
		}
	}
	for i := 0; i < n; i++ {
		if contains(e, i) {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}
