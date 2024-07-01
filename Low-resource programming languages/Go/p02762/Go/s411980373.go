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
	block := make(map[int][]int)
	ab := make(map[string]struct{})
	for i := 0; i < m; i++ {
		a, _ := strconv.Atoi(stringLineScan())
		b, _ := strconv.Atoi(stringLineScan())
		a--
		b--
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
		c--
		d--
		if _, ok := block[c]; ok == false {
			x := make([]int, 0)
			block[c] = x
		}
		if _, ok := block[d]; ok == false {
			x := make([]int, 0)
			block[d] = x
		}
		block[c] = append(block[c], d)
		block[d] = append(block[d], c)
		ab[fmt.Sprint(c, d)] = struct{}{}
		ab[fmt.Sprint(d, c)] = struct{}{}
	}
	group := make([]int, n)
	ans := make([]int, n)
	init := 0
	for i := 0; i < n; i++ {
		for j := init; j < n; j++ {
			if !searched[j] {
				searched[j] = true
				init = j
				count++
				break
			}
		}
		result := make([]int, 1)
		result[0] = init
		result = splitter(init, f[init], f, result)
		l := len(result) - 1
		for _, j := range result {
			ans[j] = l
			group[j] = init
		}
		if count == n {
			break
		}
	}
	for k, list := range f {
		for _, v := range list {
			if _, ok := ab[fmt.Sprint(k, v)]; group[k] == group[v] && ok {
				ans[k]--
			}
		}
	}
	for k, list := range block {
		for _, v := range list {
			if _, ok := ab[fmt.Sprint(k, v)]; group[k] == group[v] && ok {
				ans[k]--
			}
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
