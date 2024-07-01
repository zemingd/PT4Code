package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func rcvInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func gcd(a, b int) int {
	for b != 0 {
		c := a % b
		a, b = b, c
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	n := rcvInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = rcvInt()
	}

	y := a[0]
	for _, x := range a {
		y = gcd(x, y)
	}

	fmt.Println(y)
}
