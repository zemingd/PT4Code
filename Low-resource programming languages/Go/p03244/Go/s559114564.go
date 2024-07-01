package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	res, _ := strconv.Atoi(sc.Text())
	return res
}

func toA(m map[int]int) [][2]int {
	a := [][2]int{}
	for k, v := range m {
		a = append(a, [2]int{k, v})
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	oIdx, eIdx := make(map[int]int), make(map[int]int)

	for i := 0; i < n/2; i++ {
		eIdx[nextInt()]++
		oIdx[nextInt()]++
	}
	eIdx[-1]++
	oIdx[-1]++

	es, os := toA(eIdx), toA(oIdx)
	sort.Slice(es, func(i, j int) bool { return es[i][1] > es[j][1] })
	sort.Slice(os, func(i, j int) bool { return os[i][1] > os[j][1] })

	ans := 1 << 28
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			if es[i][0] == os[j][0] {
				continue
			}
			val := n - es[i][1] - os[j][1]

			if val < ans {
				ans = val
			}
		}
	}

	fmt.Println(ans)
}
