package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	as := getIntSlice(n)

	m := make(map[int]bool, 8)
	over3200 := 0
	for _, a := range as {
		if a >= 3200 {
			over3200++
		} else {
			m[a/400] = true
		}
	}

	min := len(m)
	if min == 0 {
		min = 1
	}
	max := len(m) + over3200
	if max > 8 {
		max = 8
	}

	fmt.Println(min, max)
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
