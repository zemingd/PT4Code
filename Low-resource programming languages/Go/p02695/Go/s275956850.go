package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

func max(a int, b int) int {
	if (a >= b) {
		return a
	}
	return b
}

func calc(N int, M int, Q int, a []int, b []int, c []int, d []int, A []int) (r int) {
	for i:=0; i < Q; i++ {
		if (A[b[i]-1] - A[a[i]-1] == c[i]) {
			r += d[i]
		}
	}
	return
}

func solve(N int, M int, Q int, a []int, b []int, c []int, d []int, A []int) int {
	l := len(A)
	if (A[l-1] > M) {
		return 0
	}
	if (l > N) {
	//	fmt.Printf("A: %v, len: %d score: %d\n", A, l, calc(N, M, Q, a, b, c, d, A))
		return calc(N, M, Q, a, b, c, d, A)
	}

	A2 := make([]int, l)
	copy(A2, A)
	A[l-1] = A[l-1] + 1
	A2 = append(A2, A2[l-1])
	return max(solve(N, M, Q, a, b, c, d, A), solve(N, M, Q, a, b, c, d, A2))
}

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func nextInt() int {
    sc.Scan()
    hoge := sc.Text()
    i, e := strconv.Atoi(hoge)
    if e != nil {
        panic(e)
    }
    return i
}



func main() {
	sc.Split(bufio.ScanWords)
	N, M, Q := nextInt(), nextInt(), nextInt()
	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)
	A := []int{}
	A = append(A, 1)
	for i:=0; i < Q; i++ {
		a[i], b[i], c[i], d[i] = nextInt(), nextInt(), nextInt(), nextInt()
	}
	fmt.Println(solve(N, M, Q, a, b, c, d, A))
}

