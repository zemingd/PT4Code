package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	a = risort(a)

	if n == 2 {
		fmt.Println(a[0])
	}

	var ret int
	var tmp []int
	var tc int
	for k, v := range a {
		if k == 0 {
			ret += v
			continue
		}
		if k == 1 {
			tmp = append(tmp, v)
			tc = 2
			continue
		}
		tmp = append(tmp, v)
		tc--
		ret += tmp[0]
		if tc == 0 {
			tmp = tmp[1:]
			tc = 2
		}
	}
	fmt.Println(ret)
}

func insert(h []int, k int, n int) []int {
	ret := h[0:k:k]
	ret = append(ret, n)
	ret = append(ret, h[k:]...)
	return ret
}

func risort(s []int) []int {
	sort.Slice(s, func(i, j int) bool { return s[i] > s[j] })
	return s
}
func isort(s []int) []int {
	sort.Slice(s, func(i, j int) bool { return s[i] < s[j] })
	return s
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
