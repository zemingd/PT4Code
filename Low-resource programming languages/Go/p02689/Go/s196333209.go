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

	sc = bufio.NewScanner(os.Stdin)
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
	bet := make([]int, N)
	m := make(map[int]int)
	for i := 0; i < len(H); i++ {
		m[i] = 0
	}
	for i := 0; i < M; i++ {
		var A, B int
		fmt.Scan(&A, &B)
		A = A - 1
		B = B - 1
		m[A]++
		m[B]++
		if H[A] > H[B] {
			bet[A] = 1
			if bet[B] == 1 {
				bet[B] = 0
			}
		} else if H[B] > H[A] {
			bet[B] = 1
			if bet[A] == 1 {
				bet[A] = 0
			}
		}
	}
	total := 0
	for i := 0; i < len(bet); i++ {
		total = total + bet[i]
	}
	//イテレーション1
	for _, v := range m {
		if v == 0 {
			total++
		}
	}
	fmt.Println(total)
}
