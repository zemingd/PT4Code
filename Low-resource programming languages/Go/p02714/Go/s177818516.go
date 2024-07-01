package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanInt64() int64 {
	sc.Scan()
	i, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return i
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func scanInts64(n int) []int64 {
	res := make([]int64, n)
	for i := range res {
		res[i] = scanInt64()
	}
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	_ = scanInt()
	s := scanText()
	color := map[string][]int{}


	for i, c := range s {
		color[string(c)] = append(color[string(c)], i+1)
	}
	ans := 0

	for _, r := range color["R"] {
		for _, g := range color["G"] {
			for _, b := range color["B"] {
				if r-g == g-b || r-b == g - r || r-b == b-g {
					continue
				}
				ans++
			}
		}
	}
	fmt.Println(ans)
}