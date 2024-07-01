package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Coloring Colorfully
	var S string
	fmt.Scanf("%s", &S)

	var A, B string
	for i := 0; i < len(S); i++ {
		if i%2 == 0 {
			A += string('0')
			B += string('1')
		} else {
			A += string('1')
			B += string('0')
		}
	}

	var countA, countB int
	for i := 0; i < len(S); i++ {
		if A[i] != S[i] {
			countB++
		} else {
			countA++
		}
	}

	fmt.Println(math.Min(float64(countA), float64(countB)))
}
