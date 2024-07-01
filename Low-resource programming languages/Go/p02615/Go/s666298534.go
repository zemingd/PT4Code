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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	A := make([]int, n)
	for i := range A {
		A[i] = nextInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	Q := []int{A[0]}
	ans := 0
	for i := 1; i < n; i++ {
		q := Q[0]
		ans += q
		if q == A[i] {
			Q = append(Q, A[i])
		} else {
			Q = Q[1:]
			Q = append(Q, A[i])
			Q = append(Q, A[i])
		}
	}
	fmt.Println(ans)
}
