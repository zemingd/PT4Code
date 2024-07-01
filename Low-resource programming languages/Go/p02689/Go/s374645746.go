package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	sc.Split(bufio.ScanWords)
	H := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		k, e := strconv.Atoi(sc.Text())
		if e != nil {
			panic(e)
		}
		H[i] = k
	}
	m := make(map[int]int)
	for i := 0; i < len(H); i++ {
		m[i] = 1
	}
	for i := 0; i < M; i++ {
		var A, B int
		fmt.Scan(&A, &B)
		A = A - 1
		B = B - 1
		if H[A] > H[B] {
			m[B] = 0
		} else if H[B] > H[A] {
			m[A] = 0
		} else {
			m[B] = 0
			m[A] = 0
		}
	}
	total := 0
	//イテレーション1
	for _, v := range m {
		if v == 1 {
			total++
		}
	}
	fmt.Println(total)
}
