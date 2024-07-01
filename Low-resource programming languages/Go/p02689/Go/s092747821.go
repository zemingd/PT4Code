package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func scanInts64(n int) []int64 {
	res := make([]int64, n)
	for i := range res {
		res[i] = scanInt64()
	}
	return res
}

func scanText() string {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Scan()
	return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	n, m := scanInt(), scanInt()
	h := make([]int, n)
	for i := range h {
		h[i] = scanInt()
	}
	t := make(map[int][]int, n)

	for i := 0; i < m; i++ {
		a := scanInt() - 1
		b := scanInt() - 1
		t[a] = append(t[a], b)
		t[b] = append(t[b], a)
	}
	ans := make([]int, n)

	for i := 0; i < n; i++ {
		if ans[i] == -1 {
			continue
		}

		ok := true
		for _, num := range t[i] {
			if h[num] >= h[i] {
				ans[i] = -1
				ok = false
			}
		}
		if ok == true {
			ans[i] = 1
		}
	}
	cnt := 0
	for _, i := range ans {
		if i == 1 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
