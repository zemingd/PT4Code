package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const MaxInt = int(^uint(0) >> 1)
const MinInt = -MaxInt - 1

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sort(str string) string {
	n := len(str)
	res := []rune(str)
	for i := 0; i < n; i++ {
		min := i
		for j := i + 1; j < n; j++ {
			if res[j] < res[min] {
				min = j
			}
		}
		res[i], res[min] = res[min], res[i]
	}
	return string(res)
}

func combination(n, r int) int {
	result := 1
	for i := n; i > (n - r); i-- {
		result *= i
	}
	for i := 2; i <= r; i++ {
		result /= i
	}
	return result
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	sorted := make(map[string]int, n)
	for i := 0; i < n; i++ {
		s := nextStr()
		s = sort(s)
		if _, ok := sorted[s]; ok {
			sorted[s]++
		} else {
			sorted[s] = 1
		}
	}

	count := 0
	for _, v := range sorted {
		count += combination(v, 2)
	}
	fmt.Printf("%d\n", count)
}
