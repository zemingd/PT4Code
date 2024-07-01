package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	m := make(map[string]int)
	for i := 0; i < N; i++ {
		sc.Scan()
		s := sc.Text()
		rs := []rune(s)
		is := make([]int, 10)
		for j := 0; j < 10; j++ {
			is[j] = int(rs[j])
		}
		sort.Ints(is)
		for j := 0; j < 10; j++ {
			rs[j] = rune(is[j])
		}
		s = string(rs)
		m[s]++
	}
	count := 0
	for _, v := range m {
		if v > 1 {
			count += v * (v - 1) / 2
		}
	}
	fmt.Println(count)
}
