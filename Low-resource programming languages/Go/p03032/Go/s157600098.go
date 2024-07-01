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

	N, K := nextInt(), nextInt()
	V := make([]int, N)
	for i := 0; i < N; i++ {
		V[i] = nextInt()
	}

	ans := 0
	for a := 0; a <= min(N, K); a++ {
		for b := 0; a+b <= min(N, K); b++ {
			v := make([]int, 0)
			cur := 0
			for i := 0; i < a; i++ {
				v = append(v, V[i])
				cur += V[i]
			}
			for i := 0; i < b; i++ {
				v = append(v, V[N-1-i])
				cur += V[N-1-i]
			}

			sort.Ints(v)
			for i := 0; i < min(K-a-b, len(v)); i++ {
				if v[i] < 0 {
					cur -= v[i]
				}
			}
			ans = max(ans, cur)

		}
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
