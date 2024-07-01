package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	A []int
	N int
)

func add(B, C int) {
	n := (N-1) / 2
	if A[0] <= C {
		n = 0
	} else {
		L := 0
		R := N-1
		for {
			if A[n] == C {
				break
			} else if A[n] < C {
				R = n
			} else {
				L = n
			}
			n = L + (R - L) / 2
			if R - L <= 1 {
				n = R
				break
			}
		}
	}

	Cs := make([]int, 0, B)
	max := B
	if N - n < B {
		max = N - n
	}
	if n == 0 {
		for i := 0; i < max; i++ {
			Cs = append(Cs, C)
		}
		A = append(Cs, A[:N-max]...)
	} else {
		A = append(A[:n+max], A[n:]...)
		for i := 0; i < max; i++ {
			A[n+i] = C
		}
	}
}

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N = nextInt()
	M := nextInt()

	A = make([]int, 0, N)
	for i := 1; i <= N; i++ {
		a := nextInt()
		A = append(A, a)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	for j := 1; j <= M; j++ {
		B := nextInt()
		C := nextInt()
		if A[N-1] >= C {
			continue
		}
		add(B, C)
	}

	ans := 0
	for i := 0; i < N; i++ {
		ans += A[i]
	}
	fmt.Println(ans)
}