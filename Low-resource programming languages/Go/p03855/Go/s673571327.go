package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

type node struct {
	w, l bool
}

func main() {
	sc.Split(bufio.ScanWords)
	N, K, L := getInt(), getInt(), getInt()
	p := make([]int, K)
	q := make([]int, K)
	r := make([]int, L)
	s := make([]int, L)
	n := make([]node, N+1)

	for i := 0; i < K; i++ {
		p[i], q[i] = getInt(), getInt()
		n[p[i]].w = true
		n[q[i]].w = true
	}

	for i := 0; i < L; i++ {
		r[i], s[i] = getInt(), getInt()
		n[r[i]].l = true
		n[s[i]].l = true
	}
	w := bufio.NewWriter(os.Stdout)

	for i := 1; i <= N; i++ {
		ans := 0
		if n[i].w {
			ans++
		}
		if n[i].l {
			ans++
		}
		fmt.Fprint(w, ans)
	}
	fmt.Fprint(w, "\n")
	_ = w.Flush()
}
