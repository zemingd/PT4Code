package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc *bufio.Scanner

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func culculate(s string) int {
	rs := []rune(s)
	cnt := 0
	for i := 1; i < len(rs); i++ {
		if rs[i] == rs[i-1] {
			rs[i] = '*'
			cnt++
		}
	}
	return cnt
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 0), 1000000001*3)
	sc.Split(bufio.ScanWords)
	s, k := nextStr(), nextInt()
	s2 := strings.Join([]string{s, s}, "")

	ans1 := culculate(s)
	ans2 := culculate(s2)
	diff := ans2 - ans1
	fmt.Println(ans1 + (diff * (k - 1)))
}
