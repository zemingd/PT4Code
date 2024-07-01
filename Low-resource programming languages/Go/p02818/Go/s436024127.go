package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	A, B, K := nextInt(), nextInt(), nextInt()

	if A > 0 {
		A = A - K
		if A < 0 {
			B = B + A
			A = 0
		}

	} else {
		B = B - K
		if B < 0 {
			B = 0
		}
	}

	fmt.Println(A, B)
}
