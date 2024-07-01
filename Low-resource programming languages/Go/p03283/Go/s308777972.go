package main

import (
	"bufio"
	"fmt"
	"os"
)

var N, M, Q int

func main() {
	N, M, Q = ReadInt(), ReadInt(), ReadInt()

	L := make([]int, M)
	R := make([]int, M)
	for i := 0; i < M; i++ {
		L[i] = ReadInt()
		R[i] = ReadInt()
	}
	sumTable := buildSumTable(L, R)

	for i := 0; i < Q; i++ {
		p, q := ReadInt(), ReadInt()
		fmt.Println(calcSum(sumTable, p, q))
	}
}

func buildSumTable(L, R []int) [][]int {
	sum := make([][]int, N+1)
	for i := 0; i < N+1; i++ {
		sum[i] = make([]int, N+1)
	}
	for i := 0; i < M; i++ {
		sum[L[i]][R[i]]++
	}
	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			sum[i][j] += sum[i-1][j]
			sum[i][j] += sum[i][j-1]
			sum[i][j] -= sum[i-1][j-1]
		}
	}
	return sum
}

func calcSum(sumTable [][]int, L, R int) int {
	return sumTable[R][R] - sumTable[R][L-1] - sumTable[L-1][R] + sumTable[L-1][L-1]
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
