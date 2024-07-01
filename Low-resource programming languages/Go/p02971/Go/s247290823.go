package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type IntDescSort []int

func (s IntDescSort) Len() int {
	return len(s)
}

func (s IntDescSort) Less(i, j int) bool {
	return s[i] > s[j]
}

func (s IntDescSort) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	// ここからロジック
	n, _ := strconv.Atoi(s)
	arr := make([]int, 0, n)
	arrSorted := make([]int, 0, n)

	for i := 0; i < n; i++ {
		if sc.Scan() {
			s = sc.Text()
		}
		_n, _ := strconv.Atoi(s)
		arr = append(arr, _n)
		arrSorted = append(arrSorted, _n)
	}
	// 大きい順にしてソートする
	sort.Sort(IntDescSort(arrSorted))
	for _, n := range arr{
		skipped := false
		for _, max := range arrSorted{
			if max != n || skipped{
				fmt.Println(max)
				break
			}else{
				skipped = true
				continue
			}
		}
	}
}
