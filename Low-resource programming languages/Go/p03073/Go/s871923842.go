package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func min(lhs, rhs int) int {
	if lhs < rhs {
		return lhs
	}
	return rhs
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextWord()

	var ans int

	// count 0
	var cnt0 [2]int
	var cnt1 [2]int
	for i := 0; i < len(s); i++ {
		if s[i] == '0' {
			cnt0[i%2]++
		} else {
			cnt1[i%2]++
		}
	}
	sort.Ints(cnt0[:])
	sort.Ints(cnt1[:])
	ans0 := (len(s)+1)/2 - cnt0[1] + cnt0[0]
	ans1 := (len(s)+1)/2 - cnt1[1] + cnt1[0]
	ans = min(ans0, ans1)
	fmt.Println(ans)
}
