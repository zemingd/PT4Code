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

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N, K := scanInt(), scanInt()
	h := make([]int, N)
	for i := 0; i < N; i++ {
		h[i] = scanInt()
	}
	sort.Ints(h)

	ans := h[K-1] - h[0]
	for i := K; i < N; i++ {
		ans = intMin(ans, h[i]-h[i+1-K])
	}
	fmt.Println(ans)
}
