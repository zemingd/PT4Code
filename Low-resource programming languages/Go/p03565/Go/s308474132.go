package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
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

	s := scanRunes()
	t := scanRunes()

	ans := []string{}
	for i := 0; i < len(s)-len(t)+1; i++ {
		f := true
		ss := make([]rune, len(s))
		copy(ss, s)

		for j := 0; j < len(t); j++ {
			if s[i+j] != t[j] && s[i+j] != '?' {
				f = false
				break
			} else {
				ss[i+j] = t[j]
			}
		}
		if f {
			ans = append(ans, strings.Replace(string(ss), "?", "a", -1))
		}
	}
	sort.Strings(ans)
	if len(ans) == 0 {
		fmt.Fprintln(wr, "UNRESTORABLE")
	} else {
		fmt.Fprintln(wr, ans[0])
	}
}
