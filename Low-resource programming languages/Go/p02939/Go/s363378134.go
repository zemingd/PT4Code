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
	if len(S) > 100 {
		fmt.Println(1)
		return
	}
	o := str{chrs: []byte(S), memo: make([][4]int64, len(S)+20)}
	if len(S) == 1 {
		fmt.Println(1)
		return
	}
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
	memo [][4]int64
}

// prev
// 1: 前の文字列と、その前の文字列が異なる
// 2: 前の文字列と、その前の文字列が一致
// 3: 前の文字列が2文字

func (s *str) solve(prev, idx int) int64 {
	if idx == len(s.chrs)-1 {
		if prev == 2 || prev == 3 {
			return 1
		}
		if s.chrs[idx] == s.chrs[idx-1] {
			return 0
		}
		return 1
	}
	if s.memo[idx][prev] != 0 {
		return s.memo[idx][prev]
	}
	var ans int64
	switch prev {
	case 1:
		if s.chrs[idx] == s.chrs[idx-1] {
			ans = s.solve(2, idx+1)
		} else {
			ans = s.solve(1, idx+1) + 1
		}
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
