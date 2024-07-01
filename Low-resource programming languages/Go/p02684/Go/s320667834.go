package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for D - Teleporter
	var N, K int
	fmt.Scan(&N, &K)

	sc.Split(bufio.ScanWords)
	A := make([]int, N)

	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	B := make(map[int]int, N)
	C := make([]int, 0)
	D := make([]int, 0)
	var temp int = 1
	var numBefore, numAfter int
	var count int
	var flag int
	for {
		B[temp]++
		count++
		if flag == 0 && B[temp] > 1 {
			numBefore = count
			flag = 1
		}

		if flag == 1 && B[temp] > 2 {
			numAfter = count
			break
		}

		if flag == 1 {
			C = append(C, A[temp-1])
		} else {
			D = append(D, A[temp-1])
		}
		temp = A[temp-1]
	}

	if K < numBefore {
		fmt.Println(D[K-1])
	} else {
		fmt.Println(C[(K-numBefore)%(numAfter-numBefore)])
	}

}
