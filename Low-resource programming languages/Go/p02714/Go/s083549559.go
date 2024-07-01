package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	var r, g, b int
	for _, c := range S {
		if c == 'R' {
			r++
		}
		if c == 'G' {
			g++
		}
		if c == 'B' {
			b++
		}
	}
	count := 0 // j-i==k-j
	for i := 0; i < N-2; i++ {
		for j := i + 1; j < N-1; j++ {
			k := 2*j - i
			if k >= N {
				continue
			}
			// (i, j, k)
			if S[i] != S[j] && S[j] != S[k] && S[k] != S[i] {
				count++
			}
		}
	}
	fmt.Println(r*g*b - count)
}
