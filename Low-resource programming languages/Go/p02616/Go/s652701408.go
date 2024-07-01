package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

	n, k := scanInt(), scanInt()
	a := scanInts(n)
	sort.Ints(a)
	if a[0] >= 0 {
		ans := 1
		for i := 0; i < k; i++ {
			ans = ans * a[n-1-i] % mod
		}
		fmt.Fprintln(wr, ans)
		return
	}

	m := sort.Search(n, func(idx int) bool { return 0 <= a[idx] })
	p := n - m

	if !(k&1 == 1 && p == 0) {
		arr := []pii{}
		for i := 0; i < m; i += 2 {
			if m-1 == i {
				arr = append(arr, pii{a[i], 1})
			} else {
				arr = append(arr, pii{a[i] * a[i+1] % mod, 2})
			}
		}
		for i := m; i < n; i++ {
			arr = append(arr, pii{a[i], 1})
		}
		sort.Slice(arr, func(i, j int) bool { return arr[i].a > arr[j].a })

		ans := 1
		for i := 0; i < len(arr); i++ {
			if k-arr[i].b >= 0 {
				ans = ans * arr[i].a % mod
				k -= arr[i].b
			}
			if k == 0 {
				break
			}
		}
		fmt.Fprintln(wr, (ans+mod)%mod)
	} else {
		ans := 1
		for i := 0; i < k; i++ {
			ans = ans * a[n-1-i] % mod
		}
		fmt.Fprintln(wr, (ans+mod)%mod)
	}
}

const mod = 1000000007

type pii struct{ a, b int }
