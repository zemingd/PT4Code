package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	s := IOInitialize()
	s.Buffer([]byte{}, math.MaxInt64)
	N := Int(s)
	M := Int(s)
	div := M / N
	res := 1

	for i := div; i > 1; i-- {
		if M%i == 0 {
			res = i
			break
		}
	}
	fmt.Println(res)
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
