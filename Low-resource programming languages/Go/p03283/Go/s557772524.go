package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	sc.Split(bufio.ScanWords)

	N, M, Q := scanInt(), scanInt(), scanInt()
	Map := make([][]int, N+1)
	for i := 1; i <= N; i++ {
		Map[i] = make([]int, N+1)
	}

	for i := 0; i < M; i++ {
		L, R := scanInt(), scanInt()
		Map[L][R]++
	}

	for i := 1; i <= N; i++ {
		for j := 1; j < N; j++ {
			Map[i][j] += Map[i][j-1]
		}
	}

	for i := 0; i < Q; i++ {
		p, q := scanInt(), scanInt()
		ans := 0
		for i := p; i <= q; i++ {
			ans += Map[i][q] - Map[i][p-1]
		}
		fmt.Println(ans)
	}
}
