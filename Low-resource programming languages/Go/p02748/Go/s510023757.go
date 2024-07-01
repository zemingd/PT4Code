package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	var A, B, M int
	A = nextInt()
	B = nextInt()
	M = nextInt()
	priceA := make([]int, A)
	priceB := make([]int, B)
	minA := 100001
	minB := 100001

	for i := 0; i < A; i++ {
		tempA := nextInt()
		priceA[i] = tempA
		if minA > tempA {
			minA = tempA
		}
	}

	for i := 0; i < B; i++ {
		tempB := nextInt()
		priceB[i] = tempB
		if minB > tempB {
			minB = tempB
		}
	}

	min := 200001
	for i := 0; i < M; i++ {
		x := nextInt()
		y := nextInt()
		c := nextInt()

		if tempTotal := priceA[x-1] + priceB[y-1] - c; min > tempTotal {
			min = tempTotal
		}
	}

	if min > minA+minB {
		min = minA + minB
	}

	fmt.Println(min)
}
