package main

import (
	"bufio"
	"fmt"
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

func main() {
	sc.Split(bufio.ScanWords)

	X, Y, Z, K := scanInt(), scanInt(), scanInt(), scanInt()
	A, B, C := make([]int, X), make([]int, Y), make([]int, Z)
	for i := 0; i < X; i++ {
		A[i] = scanInt()
	}
	sort.Ints(A)
	for i := 0; i < Y; i++ {
		B[i] = scanInt()
	}
	sort.Ints(B)
	for i := 0; i < Z; i++ {
		C[i] = scanInt()
	}
	sort.Ints(C)

	ans := make([]int, 0)
	for i := 1; i <= X; i++ {
		for j := 1; j <= Y; j++ {
			for k := 1; k <= Z; k++ {
				if i*j*k <= K {
					ans = append(ans, A[X-i]+B[Y-j]+C[Z-k])
				}
			}
		}
	}
	sort.Ints(ans)

	for i := 0; i < K; i++ {
		fmt.Println(ans[len(ans)-1-i])
	}
}
