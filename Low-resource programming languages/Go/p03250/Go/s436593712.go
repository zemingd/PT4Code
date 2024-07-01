package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := IOInitialize()
	A := Int(s)
	B := Int(s)
	C := Int(s)
	nums := []int{A, B, C}
	index := max(nums)
	res := 0
	for i, num := range nums {
		if i == index {
			res += num * 10
		} else {
			res += num
		}
	}
	fmt.Println(res)
}

func max(nums []int) int {
	res := 0
	n := nums[0]
	for i, num := range nums {
		if n < num {
			n = num
			res = i
		}
	}
	return res
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
