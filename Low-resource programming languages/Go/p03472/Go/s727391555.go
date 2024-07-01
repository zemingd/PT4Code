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

	N, H := nextInt(), nextInt()

	a := make([]int, N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		a[i], b[i] = nextInt(), nextInt()
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	ma := a[0]

	sort.Sort(sort.Reverse(sort.IntSlice(b)))

	cnt := 0
	for i := 0; i < len(b); i++ {
		if b[i] > ma {
			H -= b[i]
			cnt++
		}

		if H <= 0 {
			fmt.Println(cnt)
			return
		}
	}

	cnt += H / ma

	if H%ma != 0 {
		cnt++
	}

	fmt.Println(cnt)
}
