package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func merge(s1, s2 []int) []int {
	sRet := make([]int, 0)
	for {
		switch {
		case len(s1) == 0:
			sRet = append(sRet, s2...)
			return sRet
		case len(s2) == 0:
			sRet = append(sRet, s1...)
			return sRet
		case s1[0] >= s2[0]:
			sRet = append(sRet, s1[0])
			s1 = s1[1:]
		case s1[0] < s2[0]:
			sRet = append(sRet, s2[0])
			s2 = s2[1:]
		}
	}
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n, m := nextInt(), nextInt()

	jobs := make([][]int, 100000+1)
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		jobs[a] = append(jobs[a], b)
	}
	for j := 0; j <= m; j++ {
		sort.Sort(sort.Reverse(sort.IntSlice(jobs[j])))
	}

	ans := 0
	possible := make([]int, 0)
	for day := 0; day <= m; day++ {
		possible = merge(possible, jobs[day])
		if len(possible) > 0 {
			ans += possible[0]
			possible = possible[1:]
			possible = possible[:minInt(len(possible), m-day)]
		}
	}
	fmt.Println(ans)
}
