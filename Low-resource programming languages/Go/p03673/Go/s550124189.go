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
	n := nextInt()
	a := make([]int, n)
	// b := make([]int, 0)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	b := make([]int, 0)
	b = append(b, a[0])
	for i := 1; i < n; i++ {
		if i%2 != 0 {
			b = append(b, a[i])
		} else {
			b = append(b[0:1], b[0:]...)
			b[0] = a[i]

		}

	}

	if n%2 == 0 {

		for i := len(b) - 1; i >= 0; i-- {
			fmt.Printf("%d ", b[i])
		}
	} else {
		for i := 0; i < len(b); i++ {
			fmt.Printf("%d ", b[i])

		}
	}
}
