package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func getMin(x ...int) int {
	min := math.MaxInt64
	for i := 0; i < len(x); i++ {
		if x[i] < min {
			min = x[i]
		}
	}
	return min
}

func pow(x, pow int) int {
	ans := x
	for i := 1; i < pow; i++ {
		ans = ans * x
	}
	return ans
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	sc.Split(bufio.ScanWords)

	t := nextString()
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	before := 'D'
	for i := 0; i < len(t); i++ {
		if t[i] == '?' {
			if before == 'P' {
				fmt.Fprint(w, "D")
				before = 'D'
			} else {
				fmt.Fprint(w, "P")
				before = 'P'
			}
		} else {
			fmt.Fprintf(w, "%c", t[i])
			if t[i] == 'P' {
				before = 'P'
			} else {
				before = 'D'
			}
		}
	}
	fmt.Fprintln(w, "")
}
