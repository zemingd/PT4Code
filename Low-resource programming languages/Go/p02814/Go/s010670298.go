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

	t := A[0]
	pow := countTwo(A[0])
	for i := 1; i < N; i++ {
		a := A[i]
		c := countTwo(a)
		if pow != c {
			fmt.Println(0)
			return
		}
		a = A[i]
		t = lcm(a, t)
	}

	fmt.Println((M/t + 1) / 2)
}

func countTwo(x int) int {
	c := 0
	for x > 0 && x%2 == 0 {
		x /= 2
		c++
	}
	return c
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}
