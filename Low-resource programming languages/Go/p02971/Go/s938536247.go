package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func searchMax(ary []int) (max int, secMax int) {
	sort.Ints(ary)
	max = ary[len(ary)-1]
	secMax = ary[len(ary)-2]
	return
}

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	a, _ := strconv.Atoi(s.Text())

	var nums = make([]int, a)
	var cp = make([]int, a)

	for i := 0; i < a; i++ {
		s.Scan()
		n, _ := strconv.Atoi(s.Text())
		nums[i] = n
	}
	copy(cp, nums)
	max, secMax := searchMax(cp)
	for i := 0; i < a; i++ {
		if nums[i] != max {
			fmt.Println(max)
		} else {
			fmt.Println(secMax)
		}
	}
}
