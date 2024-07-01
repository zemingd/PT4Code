package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N, K := scanInt(), scanInt()
	V := make([]int, N)
	for i := 0; i < N; i++ {
		V[i] = scanInt()
	}

	ans := 0

	for ab := 0; ab <= intMin(K, N); ab++ {
		for a := 0; a <= ab; a++ {
			b := ab - a
			L := make([]int, ab)

			L = append(L, V[:a]...)
			L = append(L, V[N-b:]...)
			sort.Ints(L)

			tmp := 0
			for i, l := range L {
				if i >= (K-ab) || l >= 0 {
					tmp += l
				}
			}
			ans = intMax(ans, tmp)
		}
	}
	fmt.Println(ans)
}
