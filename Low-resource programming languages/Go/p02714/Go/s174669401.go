package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)
	r, g, b := 0, 0, 0
	for _, v := range S {
		if v == 'R' {
			r++
		} else if v == 'G' {
			g++
		} else {
			b++
		}
	}
	all := r * g * b
	sub := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			if S[i] == S[j] {
				continue
			}
			k := j*2 - i
			if k >= N || S[k] == S[i] || S[k] == S[j] {
				continue
			}
			sub++
		}
	}
	fmt.Println(all - sub)

}
