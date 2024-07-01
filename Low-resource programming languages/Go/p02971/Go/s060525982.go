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

	first := 0
	second := 0
	for _, a := range as {
		if a >= first {
			second = first
			first = a
		} else if a > second {
			second = a
		}
	}

	for _, a := range as {
		if a == first {
			fmt.Println(second)
		} else {
			fmt.Println(first)
		}
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
