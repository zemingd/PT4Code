package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func get_int(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	sc := wordScanner()
	as := make([]int, n)
	bs := make([]int, m)
	cs := make([]int, m)
	for i := range as {
		as[i] = get_int(sc)
	}
	for i := range bs {
		bs[i] = get_int(sc)
		cs[i] = get_int(sc)
	}

	nums := make([]int, 0)
	for _, a := range as {
		nums = append(nums, a)
	}
	for j, b := range bs {
		for i := 0; i < b; i++ {
			nums = append(nums, cs[j])
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(nums)))
	sum := 0
	for i := 0; i < n; i++ {
		sum += nums[i]
	}
	fmt.Println(sum)
}
