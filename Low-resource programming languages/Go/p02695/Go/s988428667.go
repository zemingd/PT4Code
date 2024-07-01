package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var si = bufio.NewScanner(os.Stdin)

func readInt() int {
	si.Scan()
	r, _ := strconv.Atoi(si.Text())
	return r
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func calc(Q int, q [50][4]int, n, m int, a []int) int {
	ret := 0
	if n == 0 {
		for i := 0; i < Q; i++ {
			if a[q[i][1]]-a[q[i][0]] == q[i][2] {
				ret += q[i][3]
			}
		}
		return ret
	}
	for i := a[len(a)-1]; i <= m; i++ {
		ret = max(ret, calc(Q, q, n-1, m, append(a, i)))
	}
	return ret
}

func main() {
	si.Split(bufio.ScanWords)
	si.Buffer(make([]byte, 0), 10000000)
	N, M, Q := readInt(), readInt(), readInt()

	var q [50][4]int

	for i := 0; i < Q; i++ {
		q[i] = [4]int{readInt(), readInt(), readInt(), readInt()}
	}
	fmt.Println(calc(Q, q, N, M, []int{1}))

}
