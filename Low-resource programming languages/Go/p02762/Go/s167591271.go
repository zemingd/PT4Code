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
	cd := make(map[string]struct{})
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
		cd[fmt.Sprint(c, d)] = struct{}{}
		cd[fmt.Sprint(d, c)] = struct{}{}
	}
	g := make([]int, n)
	for i := 0; i < n; i++ {
		init := 0
		for i := 0; i < n; i++ {
			if searched[i] == false {
				init = i
				count++
				break
			}
		}
		result := make([]int, 0)
		result = splitter(init, f[init], f, result)
		for _, j := range result {
			g[j] = i
		}
		if count == n {
			break
		}
	}
	ans := make([]int, n)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if g[i] == g[j] {
				x := fmt.Sprint(i, j)
				_, isf := ab[x]
				_, isb := cd[x]
				if !isf && !isb {
					ans[i]++
					ans[j]++
				}
			}
		}
	}
	fmt.Println(strings.Trim(fmt.Sprint(ans), "[]"))
}
func splitter(init int, list []int, f map[int][]int, result []int) []int {
	for _, i := range list {
		if searched[i] == false {
			searched[i] = true
			count++
			result = append(result, i)
			result = splitter(i, f[i], f, result)
		}
	}
	return result
}
