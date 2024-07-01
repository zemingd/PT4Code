package main
 
// ABC160C - Travelling Salesman around Lake (解説回答)
// https://atcoder.jp/contests/abc160/tasks/abc160_c
 
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)
 
func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	K := nextInt(sc)
	N := nextInt(sc)
	A := make([]int, N)
	for i := range A {
		A[i] = nextInt(sc)
	}
	A = append(A, K+A[0])
	L := 0
	for i := 0; i < N; i++ {
		L = max(L, A[i+1]-A[i])
	}
	fmt.Println(K - L)
}
func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}