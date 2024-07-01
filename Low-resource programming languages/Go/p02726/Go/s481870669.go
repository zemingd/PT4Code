package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
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
func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	x := scanInt()
	y := scanInt()
	ans := make([]int, n-1)
	for i := 1; i < n+1; i++ {
		var k int
		for j := i + 1; j < n+1; j++ {
			k = min(j-i, abs(x-i)+abs(y-j)+1)
			ans[k-1] += 1
		}
	}
	for _, v := range ans {
		fmt.Println(v)
	}
}
