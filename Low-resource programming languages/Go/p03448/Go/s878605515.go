package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInput() (int, int, int, int) {
	A := 0
	if sc.Scan() {
		A, _ = strconv.Atoi(sc.Text())
	}
	B := 0
	if sc.Scan() {
		B, _ = strconv.Atoi(sc.Text())
	}
	C := 0
	if sc.Scan() {
		C, _ = strconv.Atoi(sc.Text())
	}
	X := 0
	if sc.Scan() {
		X, _ = strconv.Atoi(sc.Text())
	}
	return A, B, C, X
}

func main() {

	A, B, C, X := getInput()

	num := 0
	for a := 0; a <= A; a++ {
		for b := 0; b <= B; b++ {
			for c := 0; c <= C; c++ {
				if a*500+b*100+c*50 == X {
					num++
				}
			}
		}
	}

	fmt.Println(num)
}
