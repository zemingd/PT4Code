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

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	c := 0
	for i := 0; i < n-2; i++ {
		if (p[i] < p[i+1] && p[i+1] < p[i+2]) || (p[i] > p[i+1] && p[i+1] > p[i+2]) {
			c++
		}
	}

	fmt.Println(c)
}