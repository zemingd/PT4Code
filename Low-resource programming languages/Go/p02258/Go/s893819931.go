package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n int
	var a []int
	n, a = receiveStdin()

	maxv := -math.MaxInt64
	min := a[0]
	for i := 1; i < n; i++ {
		if maxv < a[i]-min {
			maxv = a[i] - min
		}
		if min > a[i] {
			min = a[i]
		}
	}

	fmt.Println(maxv)
}

func receiveStdin() (int, []int) {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	n, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	var a []int
	for i := 0; i < n; i++ {
		sc.Scan()
		x := sc.Text()

		b, e := strconv.Atoi(x)
		if e != nil {
			panic(e)
		}

		a = append(a, b)
	}

	return n, a
}

