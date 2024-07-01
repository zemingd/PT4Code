package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var N, K int
var A []int

func main() {
	sc.Split(bufio.ScanWords)
	N, K = nextInt(), nextInt()
	A = make([]int, N)
	mpos := -1
	for i := 0; i < N; i++ {
		A[i] = nextInt()
		if A[i] == 1 {
			mpos = i
		}
	}

	lcnt := 0
	for l := mpos; ; {

		if l == 0 {
			break
		}

		l = l - K + 1
		lcnt++

		if l <= 0 {
			break
		}
	}

	// fmt.Println(lcnt)

	rcnt := 0
	for r := mpos; ; {
		if r == N-1 {
			break
		}

		r = r + K - 1

		rcnt++

		if N-1 <= r {
			break
		}
	}

	// fmt.Println(rcnt)

	ans := rcnt + lcnt
	fmt.Println(ans)

}
