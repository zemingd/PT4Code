package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"sort"
	"strconv"
)

func solve(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)
	sc.Split(bufio.ScanWords)
	n := nextInt(sc)

	x := make([]int, n)
	y := make([]int, n)
	for i := 0; i < n; i++ {
		x[i] = nextInt(sc)
		y[i] = x[i]
	}

	sort.Ints(y)
	c := y[n/2]

	for i := 0; i < n; i++ {
		if x[i] >= c {
			fmt.Fprintln(out, y[n/2-1])
		} else {
			fmt.Fprintln(out, y[n/2])
		}
	}

	return nil
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	err := solve(os.Stdin, os.Stdout)
	if err != nil {
		log.Fatal(err)
	}
}
