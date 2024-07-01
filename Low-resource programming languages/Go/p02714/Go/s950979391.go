package main

import "fmt"

func main() {
	var N int
	var S string

	fmt.Scan(&N, &S)
	R := make(map[int]struct{})
	G := make(map[int]struct{})
	B := make(map[int]struct{})

	for idx, c := range S {
		if c == 'R' {
			R[idx] = struct{}{}
		} else if c == 'G' {
			G[idx] = struct{}{}
		} else {
			B[idx] = struct{}{}
		}
	}

	ans := 0
	for r, _ := range R {
		for g, _ := range G {
			for b, _ := range B {
				i, j, k := po(r, g, b)
				if j-i != k-j {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}

func po(a, b, c int) (i, j, k int) {
	if a < b && a < c {
		i = a
		if b < c {
			j = b
			k = c
		} else {
			j = c
			k = b
		}
	} else if b < a && b < c {
		i = b
		if a < c {
			j = a
			k = c
		} else {
			j = c
			k = a
		}
	} else {
		i = c
		if a < b {
			j = a
			k = b
		} else {
			j = b
			k = a
		}
	}
	return
}
