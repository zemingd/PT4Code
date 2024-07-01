package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	sc := bufio.NewScanner(os.Stdin)
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		hs[i], _ = strconv.Atoi(sc.Text())
	}

	sort.Sort(sort.IntSlice(hs))

	min := math.MaxInt64

	for i := 0; i < n-k+1; i++ {
		fmt.Println(hs[i+k-1], hs[i])
		h := hs[i+k-1] - hs[i]
		if min > h {
			min = h
		}
	}

	fmt.Println(min)
}
