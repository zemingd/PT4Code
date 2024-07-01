package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Problem struct {
	Num   int
	Bonus int
	Base  int
}

var MinProblem = 100*10 + 1

func main() {
	s := IOInitialize()
	D := Int(s)
	G := Int(s)
	problems := scanNums(s, D)
	solveNums := []int{}
	calc(problems, G, &solveNums, 0, 0)
	fmt.Println(minSlice(solveNums))
}

func calc(problems []Problem, G int, solveNums *[]int, sum int, problemNum int) {
	if len(problems) == 0 {
		panic("unreachable")
	}
	for i := 0; i < len(problems); i++ {
		score := problems[i].Num*problems[i].Base + problems[i].Bonus
		if sum+score >= G {
			target := G - sum
			n := target / problems[i].Base
			if target%problems[i].Base != 0 {
				n++
			}
			*solveNums = append(*solveNums, problemNum+min(problems[i].Num, n))
		} else {
			_sum := sum + score
			num := problems[i].Num
			_problems := remove(problems, i)
			calc(_problems, G, solveNums, _sum, problemNum+num)
		}
	}
}

func remove(slice []Problem, index int) []Problem {
	_slice := []Problem{}
	for i, v := range slice {
		if i != index {
			_slice = append(_slice, v)
		}
	}
	return _slice
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

func minSlice(nums []int) int {
	res := nums[0]
	for _, num := range nums {
		if res > num {
			res = num
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

func scanNums(s *bufio.Scanner, len int) (nums []Problem) {
	for i := 0; i < len; i++ {
		num := Int(s)
		bonus := Int(s)
		nums = append(nums, Problem{Num: num, Bonus: bonus, Base: (i + 1) * 100})
	}
	return
}
