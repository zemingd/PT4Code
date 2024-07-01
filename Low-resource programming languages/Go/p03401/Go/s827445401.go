package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Num struct {
	Num          int
	DiffDistance int
}

func main() {
	s := IOInitialize()
	N := Int(s)
	nums, sum := scanNums(s, N)
	for i := 0; i < N; i++ {
		fmt.Println(sum - nums[i+1].DiffDistance)
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

func scanNums(s *bufio.Scanner, len int) (nums []Num, sum int) {
	before1 := 0
	before2 := 0
	sum = 0
	for i := 0; i < len; i++ {
		num := Int(s)
		distance := abs(num - before1)
		sum += distance
		diffDistance := abs(num-before1) + abs(before1-before2) - abs(num-before2)
		nums = append(nums, Num{Num: num, DiffDistance: diffDistance})
		before2 = before1
		before1 = num
	}
	distance := abs(0 - before1)
	sum += distance
	diffDistance := abs(0-before1) + abs(before1-before2) - abs(0-before2)
	nums = append(nums, Num{Num: 0, DiffDistance: diffDistance})

	return
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}