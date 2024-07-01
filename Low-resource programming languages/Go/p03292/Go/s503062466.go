package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

var out = os.Stdout
var in = os.Stdin

func readInput(in io.Reader) string {
	s, err := bufio.NewReader(in).ReadString('\n')
	if err != nil {
		panic(err)
	}
	return s
}

func toInts(s string) []int {
	var nums []int
	for _, f := range strings.Fields(s) {
		n, err := strconv.Atoi(f)
		if err != nil {
			panic(err)
		}
		nums = append(nums, n)
	}
	return nums
}

func calcCost(i, j int) int {
	return int(math.Abs(float64(i - j)))
}

func minCost(nums []int) (cost int) {
	n := len(nums)
	for i := 1; i < n; i++ {
		cost = cost + calcCost(nums[i], nums[i-1])
	}
	return cost
}

func main() {
	input := readInput(in)
	nums := toInts(input)
	sort.Ints(nums)
	fmt.Fprintln(out, minCost(nums))
}