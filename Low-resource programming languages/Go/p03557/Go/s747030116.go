package main

// ABC077C - Snuke Festival
// https://atcoder.jp/contests/abc077/tasks/arc084_a

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var N int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt(sc)
	}
	B := make([]int, N)
	for i := 0; i < N; i++ {
		B[i] = nextInt(sc)
	}
	C := make([]int, N)
	for i := 0; i < N; i++ {
		C[i] = nextInt(sc)
	}
	sort.Ints(A)
	sort.Ints(B)
	sort.Ints(C)
	ans := 0
	for i := 0; i < len(A); i++ {
		for j := 0; j < len(B); j++ {
			if A[i] < B[j] {
				for k := 0; k < len(C); k++ {
					if B[j] < C[k] {
						ans++
					}
				}
			}
		}
	}
	fmt.Println(ans)
}
