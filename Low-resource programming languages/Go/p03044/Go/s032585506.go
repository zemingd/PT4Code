// dfs(recursive)

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

func push(sta []pair, x pair) []pair { return append(sta, x) }

func fill(a []int, val int) {
	for i := 0; i < len(a); i++ {
		a[i] = val
	}
	return
}

type pair struct {
	u, w int
}

var al [][]pair
var ans []int

func dfs(now, c int) {
	ans[now] = c
	for _, e := range al[now] {
		if ans[e.u] != -1 {
			continue
		}
		if e.w%2 == 0 {
			dfs(e.u, c)
		} else {
			dfs(e.u, 1-c)
		}
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	al = make([][]pair, n)
	for i := 0; i < n-1; i++ {
		ru, rv, rw := ri()-1, ri()-1, ri()
		al[ru] = push(al[ru], pair{u: rv, w: rw})
		al[rv] = push(al[rv], pair{u: ru, w: rw})
	}
	ans = make([]int, n)
	fill(ans, -1)
	dfs(0, 0)
	for _, a := range ans {
		fmt.Println(a)
	}
}
