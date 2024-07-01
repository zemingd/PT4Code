package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func fill(a []int, initValue int) {
	for i := 0; i < len(a); i++ {
		a[i] = initValue
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	alOdd := make([][]int, n)
	alEvn := make([][]int, n)
	var u, v, w int
	for i := 0; i < n-1; i++ {
		u, v, w = ri()-1, ri()-1, ri()
		if w%2 == 1 {
			alOdd[u] = append(alOdd[u], v)
			alOdd[v] = append(alOdd[v], u)
		} else {
			alEvn[u] = append(alEvn[u], v)
			alEvn[v] = append(alEvn[v], u)
		}
	}
	ans := make([]int, n)
	fill(ans, -1)
	isVisited := make([]bool, n)
	var c int
	q := make([]int, 0, n)
	q = append(q, 0)
	ans[0] = 0
	for len(q) != 0 {
		c, q = q[0], q[1:]
		isVisited[c] = true
		for _, v := range alOdd[c] {
			if !isVisited[v] && ans[v] == -1 {
				ans[v] = (ans[c] + 1) % 2
				q = append(q, v)
			}
		}
		for _, v := range alEvn[c] {
			if !isVisited[v] && ans[v] == -1 {
				ans[v] = ans[c]
				q = append(q, v)
			}
		}
	}
	for _, v := range ans {
		fmt.Println(v)
	}
}
