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

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	A := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		A[i] = nextInt(sc)
	}
	for i := 0; i < M; i++ {
		var b, c int
		fmt.Scan(&b, &c)
		for j := 0; j < b; j++ {
			A = append(A, c)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	// fmt.Println("N", N, "M", M, "A", A)
	var ans int
	for i := 0; i < N; i++ {
		ans += A[i]
	}
	fmt.Println(ans)
}
