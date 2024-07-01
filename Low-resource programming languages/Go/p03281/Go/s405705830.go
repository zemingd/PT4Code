package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := IOInitialize()
	N := Int(s)
	cnt := 0
	for i := 1; i <= N; i++ {
		_cnt := 0
		if i%2 == 0 {
			continue
		}
		for j := 1; j <= N; j++ {
			if i%j == 0 {
				_cnt++
			}
		}
		if _cnt == 8 {
			cnt++
		}
	}
	fmt.Println(cnt)
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}

func String(s *bufio.Scanner) string {
	if !s.Scan() {
		panic("scan error")
	}

	return s.Text()
}

func scanNums(s *bufio.Scanner, len int) (nums []int) {
	for i := 0; i < len; i++ {
		num := Int(s)
		nums = append(nums, num)
	}
	return
}

func scanstrings(s *bufio.Scanner, len int) (strs []string) {
	for i := 0; i < len; i++ {
		str := String(s)
		strs = append(strs, str)
	}
	return
}
