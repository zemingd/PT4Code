package main

import "fmt"

func main() {
	var N int
	var S string

	fmt.Scan(&N, &S)
	ans := 0

	//R := make(map[int]struct{})
	//G := make(map[int]struct{})
	//B := make(map[int]struct{})

	//for idx, c := range S {
	//	if c == 'R' {
	//		R[idx] = struct{}{}
	//	} else if c == 'G' {
	//		G[idx] = struct{}{}
	//	} else {
	//		B[idx] = struct{}{}
	//	}
	//}

	//  for r, _ := range R {
	//  	for g, _ := range G {
	//  		for b, _ := range B {
	//  			i, j, k := po(r, g, b)
	//  			if j-i != k-j {
	//  				ans++
	//  			}
	//  		}
	//  	}
	//  }
	for i := 0; i < N-2; i++ {
		for j := i + 1; j < N-1; j++ {
			for k := j + 1; k < N; k++ {
				if j-i != k-j && S[i] != S[j] && S[j] != S[k] && S[i] != S[k] {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}

func po(a, b, c int) (int, int, int) {
	if a > b {
		a, b = b, a
	}

	if b > c {
		b, c = c, b
	}

	if a > b {
		a, b = b, a
	}
	return a, b, c
}
