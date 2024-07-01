package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for C - Coloring Colorfully
	S := nextStr()
	/*
		var A string
		for i := 0; i < len(S); i++ {
			if i%2 == 0 {
				A += string('0')
			} else {
				A += string('1')
			}
		}
	*/

	var A string
	var countA, countB int
	for i := 0; i < len(S); i++ {

		if i%2 == 0 {
			A = string('0')
		} else {
			A = string('1')
		}

		if A[0] != S[i] {
			countB++
		} else {
			countA++
		}
	}

	fmt.Println(math.Min(float64(countA), float64(countB)))
}
