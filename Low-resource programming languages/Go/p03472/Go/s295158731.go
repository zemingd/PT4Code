package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	H := nextInt(sc)
	var maxa int
	b := make([]int, N)

	for i := 0; i < N; i++ {
		a := nextInt(sc)
		maxa = max(maxa, a)
		b[i] = nextInt(sc)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(b)))

	//強い投げ刀を投げられるだけ投げる
	ans := 0
	for i := range b {
		if b[i] >= maxa {
			H -= b[i]
			ans++
			if H <= 0 {
				fmt.Println(ans)
				return
			}
		}
	}
	// まだHPが残っているので最強の振り刀を振り続ける
	for {
		H -= maxa
		ans++
		if H <= 0 {
			fmt.Println(ans)
			return
		}
	}
}
