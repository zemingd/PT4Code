package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

func main() {
	sc.Split(bufio.ScanWords)

	N, K := getInt(), getInt()
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = getInt()
	}

	sort.Ints(a)
	//	out(N, K, a)

	v := make([]int, N*(N-1)/2)
	cnt := 0
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			v[cnt] = a[i] * a[j]
			cnt++
		}
	}
	sort.Ints(v)
	out(v[K-1])
}
