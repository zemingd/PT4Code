package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	testimony := map[int](map[int]int){}
	for i := 1; i <= n; i++ {
		var a int
		fmt.Scanf("%d", &a)
		ts := map[int]int{}
		for t := 0; t < a; t++ {
			var x, y int
			fmt.Scanf("%d %d", &x, &y)
			ts[x] = y
		}
		testimony[i] = ts
	}

	pats := patterns(n)
	max := 0

	for _, pat := range pats {
		valid := true
		for _, i := range pat {
			for x, y := range testimony[i] {
				found := false
				for _, h := range pat {
					if x == h {
						found = true
					}
				}
				if (y == 1) != found {
					valid = false
				}
			}
		}
		if valid && len(pat) > max {
			max = len(pat)
		}
	}

	fmt.Printf("%d\n", max)
}

func patterns(n int) [][]int {

	if n == 0 {
		return [][]int{[]int{}}
	}

	res := [][]int{}
	rec := patterns(n - 1)
	res = append(res, rec...)
	for _, ns := range rec {
		ms := append(ns, n)
		res = append(res, ms)
	}

	return res
}
