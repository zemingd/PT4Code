package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	ruisekiwa := make([]int, n)
	ruisekiwa[0] = getInt()
	for i := 1; i < n; i++ {
		ruisekiwa[i] = ruisekiwa[i-1] + getInt()
	}

	ans := 99999
	for i := 0; i < n-1; i++ {
		ans = min(ans, abs(ruisekiwa[n-1]-ruisekiwa[i]*2))
	}

	fmt.Println(ans)
}

func min(ns ...int) int {
	min := ns[0]
	for i := 1; i < len(ns); i++ {
		if min > ns[i] {
			min = ns[i]
		}
	}
	return min
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
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
