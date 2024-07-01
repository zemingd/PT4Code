package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	c := 0
	for i := 0; i < n; i++ {
		a := nextInt()
		for a % 2 == 0 {
			c++
			a /= 2
		}
	}

	fmt.Println(c)
}