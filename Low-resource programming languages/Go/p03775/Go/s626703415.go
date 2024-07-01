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

	until := int(math.Ceil(math.Sqrt(float64(n))))
	ans := 10
	for i := 1; i <= until; i++ {
		if n%i == 0 {
			// ans = min(ans, f(n/i, i))
			ans = min(ans, n/i)
		}
	}

	fmt.Println(ans)
}

// func f(a, b int) int {
// 	maxLen := max(len(strconv.Itoa(a)), len(strconv.Itoa(b)))
// 	return maxLen
// }

func max(ns ...int) int {
	max := ns[0]
	for i := 1; i < len(ns); i++ {
		if max < ns[i] {
			max = ns[i]
		}
	}
	return max
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

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
