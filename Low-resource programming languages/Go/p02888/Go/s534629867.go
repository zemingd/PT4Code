package main

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

func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if a[i] > r {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if a[i] < r {
			r = a[i]
		}
	}
	return r
}

func main() {
	var N int
	fmt.Scan(&N)
	L := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		L[i] = nextInt(sc)
	}
	// fmt.Println("N", N, "L", L)
	ans := 0
	sort.Ints(L)
	for i := 0; i < N; i++ {
		for j := 0; i != j && j < N; j++ {
			for k := 0; k != i && k != j && k < N; k++ {
				if 2*max(L[i], L[j], L[k]) < L[i]+L[j]+L[k] {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}
