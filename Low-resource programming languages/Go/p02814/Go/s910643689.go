package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	A := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		A[i], _ = strconv.Atoi(sc.Text())
		A[i] /= 2
	}

	g := A[0]
	t := A[0]
	for i := 1; i < N; i++ {
		a := A[i]
		g = gcd(a, g)
		t = lcm(a, t)
	}
	count := 0
	for i := 1; t*i <= M; i += 2 {
		count++
	}
	fmt.Println(count)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(a, b int) int {
	if a < b {
		b, a = a, b
	}
	// a > b
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
