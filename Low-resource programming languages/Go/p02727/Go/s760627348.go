// これはヒントですがにぶたんはオーバーキルっつーかキルできねぇTLEなったわ

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	X, Y, A, B, C := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	P, Q, R := nextInts(A), nextInts(B), nextInts(C)
	sort.Sort(sort.Reverse(sort.IntSlice(P)))
	sort.Sort(sort.Reverse(sort.IntSlice(Q)))
	R = append(R, P[:X]...)
	R = append(R, Q[:Y]...)
	sort.Sort(sort.Reverse(sort.IntSlice(R)))
	ans := 0
	for i := 0; i < X+Y; i++ {
		ans += R[i]
	}
	fmt.Println(ans)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
