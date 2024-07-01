package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	as := getIntSlice(n)

	xs := make([]int, n)

	for i := n - 1; i >= 0; i-- {
		t := i + 1
		sum := as[i]
		for j := t * 2; j < n; j += t {
			sum += as[j]
		}

		xs[i] = sum % 2
	}

	bs := make([]int, 0, 200000)
	for i, x := range xs {
		if x == 1 {
			bs = append(bs, i+1)
		}
	}

	fmt.Println(len(bs))
	for _, b := range bs {
		fmt.Println(b)
	}
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
