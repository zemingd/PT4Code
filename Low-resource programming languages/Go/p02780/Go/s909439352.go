package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	K := nextInt(sc)
	p := make([]int, N)
	for i := 0; i < N; i++ {
		p[i] = nextInt(sc)
	}
	// fmt.Println("N", N, "K", K, "p", p)
	e := make([]float64, N)
	for i := 0; i < N; i++ {
		e[i] = float64((1+p[i])*p[i]/2) / float64(p[i])
	}
	sume := make([]float64, N+1)
	for i := 0; i < N; i++ {
		sume[i+1] = sume[i] + e[i]
	}
	// fmt.Println("e", e, "sume", sume)
	ans := 0.0
	for i := 0; i+K < N+1; i++ {
		ans = max(ans, sume[i+K]-sume[i])
	}
	fmt.Println(ans)
}
func max(a, b float64) float64 {
	if a > b {
		return a
	}
	return b
}
