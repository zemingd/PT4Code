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

	pow := -1
	for _, a := range A {
		c := 0
		for a > 0 && a%2 == 0 {
			a /= 2
			c++
		}
		if pow < 0 {
			pow = c
		}
		if pow != c {
			fmt.Println(0)
			return
		}
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

	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}
