package main

import "fmt"

func main() {

	var N int
	var S string

	fmt.Scanf("%d", &N)
	fmt.Scanf("%v", &S)

	num := 0
	for a := 0; a < len(S); a++ {
		A := S[a]
		for b := a+1; b < len(S); b++ {
			B := S[b]
			if A == B {
				continue
			}
			for c := b+1; c < len(S); c++ {
				C := S[c]
				if C == A || C == B {
					continue
				}
				if c - b == b - a {
					continue
				}
				num++
			}
		}
	}
	fmt.Printf("%v\n", num)
}