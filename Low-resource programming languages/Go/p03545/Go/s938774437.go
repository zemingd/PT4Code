package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	in := scanInt()
	arr := make([]int, 4)
	for i := 0; i < 4; i++ {
		arr[3-i] = in % 10
		in /= 10
	}
	ans := make([]int, 4)
	bitExhaustiveSearch(3, func(a []bool) {
		arr2 := make([]int, 4)
		copy(arr2, arr)
		for i := 0; i < 3; i++ {
			if a[i] {
				arr2[i+1] *= -1
			}
		}

		sum := 0
		for i := 0; i < 4; i++ {
			sum += arr2[i]
		}
		if sum == 7 {
			copy(ans, arr2)
		}
	})

	for i := 0; i < 4; i++ {
		if i != 0 && ans[i] >= 0 {
			fmt.Fprint(wr, "+")
		}
		fmt.Fprint(wr, ans[i])
	}
	fmt.Fprintln(wr, "=7")

}

func bitExhaustiveSearch(n int, fn func(a []bool)) {
	all := 1 << uint(n)
	a := make([]bool, n)
	for i := 0; i < all; i++ {
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 1 {
				a[j] = true
			} else {
				a[j] = false
			}
		}
		fn(a)
	}
}
