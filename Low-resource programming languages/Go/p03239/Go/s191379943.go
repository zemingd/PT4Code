package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Num struct {
	C int
	T int
}

func main() {
	s := IOInitialize()
	s.Buffer([]byte{}, math.MaxInt64)
	N := Int(s)
	T := Int(s)
	nums := scanNums(s, N)
	minCost := 10000
	for _, num := range nums {
		if num.C < minCost && num.T <= T {
			minCost = num.C
		}
	}
	if minCost == 10000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
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

func scanNums(s *bufio.Scanner, len int) (nums []Num) {
	for i := 0; i < len; i++ {
		c := Int(s)
		t := Int(s)
		nums = append(nums, Num{C: c, T: t})
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
