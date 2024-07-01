package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var searched []bool
var count int

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	m, _ := strconv.Atoi(stringLineScan())
	k, _ := strconv.Atoi(stringLineScan())
	f := make(map[int][]int)
	ab := make(map[string]struct{})
	for i := 0; i < m; i++ {
		a, _ := strconv.Atoi(stringLineScan())
		b, _ := strconv.Atoi(stringLineScan())
		a -= 1
		b -= 1
		if _, ok := f[a]; ok == false {
			x := make([]int, 0)
			f[a] = x
		}
		if _, ok := f[b]; ok == false {
			x := make([]int, 0)
			f[b] = x
		}
		f[a] = append(f[a], b)
		f[b] = append(f[b], a)
		ab[fmt.Sprint(b, a)] = struct{}{}
		ab[fmt.Sprint(a, b)] = struct{}{}
	}
	for i := 0; i < n; i++ {
		searched = append(searched, false)
	}
	for i := 0; i < k; i++ {
		c, _ := strconv.Atoi(stringLineScan())
		d, _ := strconv.Atoi(stringLineScan())
		c -= 1
		d -= 1
		ab[fmt.Sprint(c, d)] = struct{}{}
		ab[fmt.Sprint(d, c)] = struct{}{}
	}
	ans := make([]int, n)
	init := 0
	for i := 0; i < n; i++ {
		for i := init; i < n; i++ {
			if !searched[i] {
				init = i
				count++
				break
			}
		}
		result := make([]int, 0)
		result = splitter(init, f[init], f, result)
		for p := 0; p < len(result); p++ {
			for q := p + 1; q < len(result); q++ {
				r, s := result[p], result[q]
				x := fmt.Sprint(r, s)
				_, isf := ab[x]
				if !isf {
					ans[r]++
					ans[s]++
				}
			}
		}
		if count == n {
			break
		}
	}
	fmt.Println(strings.Trim(fmt.Sprint(ans), "[]"))
}
func splitter(init int, list []int, f map[int][]int, result []int) []int {
	for _, i := range list {
		if !searched[i] {
			searched[i] = true
			count++
			result = append(result, i)
			result = splitter(i, f[i], f, result)
		}
	}
	return result
}
