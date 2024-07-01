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
	if (A*B)%2 == 0 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
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
