package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const bufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func reachable(g [][]int, start int) ([]bool, []int) {
	n := len(g)
	ok := make([]bool, n)
	nums := []int{}
	var dfs func(int)
	dfs = func(v int) {
		ok[v] = true
		nums = append(nums, v)
		for _, u := range g[v] {
			if !ok[u] {
				dfs(u)
			}
		}
	}
	dfs(start)
	return ok, nums
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, bufferSize)
	sc.Buffer(buf, 1e+7)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()
	k := nextInt()
	f := make([][]int, n) // follow
	b := make([][]int, n) // block
	ans := make([]int, n)
	for i := range ans {
		ans[i] = -1
		f[i] = []int{}
		b[i] = []int{}
	}
	for i := 0; i < m; i++ {
		er := nextInt() - 1
		ee := nextInt() - 1
		f[er] = append(f[er], ee)
		f[ee] = append(f[ee], er)
	}

	for i := 0; i < k; i++ {
		er := nextInt() - 1
		ee := nextInt() - 1
		b[er] = append(b[er], ee)
		b[ee] = append(b[ee], er)
	}

	for i := 0; i < n; i++ {
		if ans[i] >= 0 {
			continue
		}
		//nums := make([]int, 0, n)
		//ok, nums := reachable(f, i)

		//ok := make([]bool, n)
		ok := map[int]bool{}
		nums := []int{}
		//nums := make([]int, 0, n)
		var dfs func(int)
		dfs = func(v int) {
			ok[v] = true
			nums = append(nums, v)
			for _, u := range f[v] {
				if !ok[u] {
					dfs(u)
				}
			}
		}
		dfs(i)

		//debugf("i:%d\nok:%v\nnums:%d\n", i, ok, nums)
		for j := range nums {
			ans[nums[j]] = len(nums) - 1
			//debugf("b[%d]:%v\n", nums[j], b[nums[j]])
			for k := range b[nums[j]] {
				if ok[b[nums[j]][k]] {
					ans[nums[j]]--
				}
			}
			ans[nums[j]] -= len(f[nums[j]])
		}
	}

	for i := range ans {
		_, _ = fmt.Fprintf(writer, "%d", ans[i])
		if i != len(ans)-1 {
			_, _ = fmt.Fprint(writer, " ")
		}
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
