package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	// read one word/char/int separated by space(s).
	//sc.Split(bufio.ScanWords)

	// read one line.
	sc.Split(bufio.ScanLines)
}

func main() {
	S := nextStr()
	o := str{chrs: []byte(S), memo: map[int]map[int]int{}}
	one := o.solve(0, 0)
	two := o.solve(0, 1)
	if one > two {
		fmt.Println(one)
		return
	}
	fmt.Println(two)
}

type str struct {
	chrs []byte
	memo map[int]map[int]int
}

func (s *str) solve(prev, idx int) int {
	if s.memo[idx] == nil {
		s.memo[idx] = map[int]int{}
	}
	if s.memo[idx][prev] != 0 {
		return s.memo[prev][idx]
	}
	if idx == len(s.chrs)-1 {
		if prev == 2 {
			return 1
		}
		if s.chrs[idx] == s.chrs[idx-1] {
			return 0
		}
		return 1
	}
	var ans int
	switch prev {
	case 1:
		if s.chrs[idx] == s.chrs[idx-1] {
			ans = s.solve(2, idx+1)
		}
		ans = s.solve(1, idx+1) + 1
	case 2:
		ans = s.solve(3, idx+1) + 1
	case 3:
		ans = s.solve(1, idx+1) + 1
	default:
		ans = s.solve(1, idx+1) + 1
	}
	s.memo[idx][prev] = ans
	return ans
}
