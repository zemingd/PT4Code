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

func gcd(a, b int) int {
	for b > 0 {
		a, b = b, a%b
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}

	ans := A[0]
	for _, a := range A {
		ans = gcd(ans, a)
	}
	fmt.Println(ans)
}
