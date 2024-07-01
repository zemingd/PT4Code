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
	K := Int(s)

	nums := []int{}
	m := map[int]int{}

	minNum := min(B, A+K)

	for i := A; i < minNum; i++ {
		nums = append(nums, i)
		m[i] = 1
	}
	init := max(A, B-K+1)
	for i := init; i <= B; i++ {
		if _, ok := m[i]; ok {
			continue
		}
		nums = append(nums, i)
	}
	for _, num := range nums {
		fmt.Println(num)
	}
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

func min(nums ...int) int {
	res := nums[0]
	for _, num := range nums {
		if res > num {
			res = num
		}
	}
	return res
}

func max(nums ...int) int {
	res := nums[0]
	for _, num := range nums {
		if res < num {
			res = num
		}
	}
	return res
}