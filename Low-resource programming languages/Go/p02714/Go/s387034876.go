package main

import (
	"fmt"
)

func SliceUnique(target []uint8) (unique []uint8) {
	m := map[uint8]bool{}

	for _, v := range target {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}

	return unique
}

func main() {
	// Code for D - RGB Triplets
	var n int
	var S string
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &S)

	r := 0
	g := 0
	b := 0

	for _, c := range S {
		if c == 'R' {
			r++
		} else if c == 'G' {
			g++
		} else {
			b++
		}
	}

	total := r * g * b
	sub := 0
	for i := 0; i < n; i++ {
		for j:=0; j<(n-i-1);j++ {
			k := j + i + 1
			if (k-i) % 2 != 0{
				continue
			}

			if len(SliceUnique([]uint8{S[i], S[(k+i)/2], S[k]})) == 3 {
				sub += 1
			}
		}
	}
	fmt.Printf("%d", total - sub)
}