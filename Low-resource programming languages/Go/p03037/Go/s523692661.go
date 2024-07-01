package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

var N, M int
var L, R []int

func main() {
	sc.Split(bufio.ScanWords)
	N, M = nextInt(), nextInt()
	L = make([]int, M)
	R = make([]int, M)
	for i := 0; i < M; i++ {
		L[i], R[i] = nextInt(), nextInt()
	}

	sort.Sort(sort.Reverse(sort.IntSlice(L)))
	sort.Ints(R)

	lmax := L[0]
	rmin := R[0]

	// fmt.Println(rmin - lmax + 1)

	ans := 0
	for i := 1; i <= N; i++ {
		if lmax <= i && i <= rmin {
			ans++
		}
	}

	fmt.Println(ans)

}
