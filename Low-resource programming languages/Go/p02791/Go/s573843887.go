package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
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
	n := nextInt()
	p := make([]int, n)

	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	total := 1
	min := p[0]
	for i := 1; i < n; i++ {
		if p[i] <= min {
			total++
			min = p[i]
		}
	}

	fmt.Printf("%d", total)
}
