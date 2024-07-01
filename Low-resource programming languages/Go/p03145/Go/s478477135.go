package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func solve(nums []int) float64 {
	return float64(nums[0]*nums[1]) * 0.5
}

func main() {
	in := read()
	nums := []int{}
	for _, c := range strings.Split(in, " ") {
		n, _ := strconv.Atoi(c)
		nums = append(nums, n)
	}
	ans := solve(nums)
	fmt.Println(ans)
}