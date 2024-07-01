package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// util
func max(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n > ans {
			ans = n
		}
	}
	return ans
}

func min(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n < ans {
			ans = n
		}
	}
	return ans
}

// main
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	r := nextInt()
	s := nextInt()
	p := nextInt()
	var tt string
	fmt.Scan(&tt)
	t := []rune(tt)
	var ans int
	flag := make([]bool, n, n)
	for i := 0; i < n; i++ {
		idx := n - 1 - i
		if flag[idx] {
			continue
		}
		if idx >= k {
			if t[idx] == t[idx-k] {
				flag[idx-k] = true
			}
		}
		x := string(t[idx])
		if x == "r" {
			ans += p
		} else if x == "s" {
			ans += r
		} else if x == "p" {
			ans += s
		}
	}
	fmt.Println(ans)
}
