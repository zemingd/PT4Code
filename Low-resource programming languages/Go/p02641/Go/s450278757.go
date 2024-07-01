package main

import "fmt"

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	if n == 0 {
		fmt.Println(x)
		return
	}

	pl := make([]int, n)
	var p int
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		pl[i] = p
	}

	nu := x
	nd := x
	for {
		if contains(pl, nu) && contains(pl, nd) {
			if nu != 100 {
				nu++
			}
			if nd != 0 {
				nd--
			}
			continue
		} else {
			break
		}
	}

	if contains(pl, nu) {
		fmt.Println(nd)
		return
	}
	if contains(pl, nd) {
		fmt.Println(nu)
		return
	}
	u := abs(x - nu)
	d := abs(x - nd)
	if u >= d {
		fmt.Println(nd)
	} else {
		fmt.Println(nu)
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}