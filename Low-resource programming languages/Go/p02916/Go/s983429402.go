package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	mod int = 1e9 + 7
)

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n := getInt()
	var as []int
	var bs []int
	var cs []int

	for i := 0; i < n; i++ {
		as = append(as, getInt())
	}

	for i := 0; i < n; i++ {
		bs = append(bs, getInt())
	}

	for i := 0; i < n-1; i++ {
		cs = append(cs, getInt())
	}

	sum := 0
	for i, a := range as {
		sum += bs[a-1]

		if i > 0 {
			if a - as[i-1] == 1 {
				sum += cs[as[i-1]-1]
			}
		}
	}

	fmt.Println(sum)
}

func getInt() int {
	sc.Scan()
	str := sc.Text()
	value, _ := strconv.Atoi(str)
	return value
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func printIntArray(array []int) {
	strArray := fmt.Sprint(array)
	fmt.Println(strArray[1 : len(strArray) - 1])
}

func calcMod(x int) int {
	return x % mod
}
