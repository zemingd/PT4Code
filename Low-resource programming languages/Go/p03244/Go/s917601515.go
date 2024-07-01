package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func mode(nums map[int]int) (int, int) {
	m := 0
	s := 0
	for k, v := range nums {
		if v > nums[m] {
			m = k
		} else if v > nums[s] {
			s = k
		}
	}
	return m, s
}

func min(n, m int) int {
	if n < m {
		return n
	}
	return m
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	nums := make([]int, n)
	for i := 0; sc.Scan(); i++ {
		m, _ := strconv.Atoi(sc.Text())
		nums[i] = m
	}

	odds := make(map[int]int)
	evens := make(map[int]int)
	for i := 0; i < n; i++ {
		if i%2 == 1 {
			evens[nums[i]]++
		} else {
			odds[nums[i]]++
		}
	}

	em, es := mode(evens)
	om, os := mode(odds)

	if em == om {
		fmt.Println(min(n-evens[em]-odds[os], n-odds[om]-evens[es]))
	} else {
		fmt.Println(n - evens[em] - odds[om])
	}
}
