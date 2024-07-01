package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"strconv"
)

func solve(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)
	sc.Split(bufio.ScanWords)

	n := nextInt(sc)
	a := make([]int, n+2)

	sum := 0
	for i := 1; i < n+1+1; i++ {
		a[i] = nextInt(sc)
		d := abs(a[i-1] - a[i])
		sum += d
	}

	for i := 1; i < n+1; i++ {
		pd := abs(a[i-1]-a[i]) + abs(a[i]-a[i+1])
		nd := abs(a[i-1] - a[i+1])
		fmt.Fprintln(out, sum-pd+nd)
	}

	return nil
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
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
