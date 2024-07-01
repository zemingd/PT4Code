package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func stdioText(s *bufio.Scanner) string {
	s.Scan()
	return s.Text()
}

func stdioNum(s *bufio.Scanner) int {
	num, _ := strconv.Atoi(stdioText(s))
	return num
}

func stdioNums(s *bufio.Scanner) []int {
	var nums []int
	for _, v := range strings.Split(stdioText(s), " ") {
		i, _ := strconv.Atoi(v)
		nums = append(nums, i)
	}
	return nums
}

func main()  {
	s := bufio.NewScanner(os.Stdin)
	nums := stdioNums(s)
	fmt.Println(nums[2] / nums[0] * nums[1])
}
