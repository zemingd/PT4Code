package main

import (
	"bufio"
	"fmt"
	"os"
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

	N := nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	ans := Gcd(A)

	fmt.Println(ans)
}

func gcdBase(a, b int) int {
	if b == 0 {
		return a
	}

	return gcdBase(b, a%b)
}

// Gcd return Greatest common divisor
func Gcd(args []int) int {
	b := args[0]

	for _, a := range args {
		b = gcdBase(a, b)
	}
	return b
}
