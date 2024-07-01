package main

import (
	"bufio"
	"fmt"
	"math"
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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}
	sort.Ints(h)
	res := make([]int, n)
	for i := 1; i < n; i++ {
		res[i] = h[i] - h[i-1] + res[i-1]
	}

	min := math.Inf(1)
	for i := k - 1; i < n; i++ {
		tmp := float64(res[i]) - float64(res[i-k+1])
		if min > tmp {
			min = tmp
		}
	}

	fmt.Println(int(min))
}
