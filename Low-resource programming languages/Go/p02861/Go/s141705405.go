package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var X []float64
var Y []float64

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanFloat() float64 {
	return float64(scanInt())
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func Permute(nums []int) [][]int {
	n := factorial(len(nums))
	ret := make([][]int, 0, n)
	permute(nums, &ret)
	return ret
}

func permute(nums []int, ret *[][]int) {
	*ret = append(*ret, makeCopy(nums))

	n := len(nums)
	p := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}

		nums[i], nums[j] = nums[j], nums[i]
		*ret = append(*ret, makeCopy(nums))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
}

func factorial(n int) int {
	ret := 1
	for i := 2; i <= n; i++ {
		ret *= i
	}
	return ret
}

func makeCopy(nums []int) []int {
	return append([]int{}, nums...)
}

func calDist(from, to int) float64 {
	x := math.Pow(X[from]-X[to], 2)
	y := math.Pow(Y[from]-Y[to], 2)
	return math.Sqrt(x + y)
}

func main() {
	n := scanInt()
	t := make([]int, n)
	X = make([]float64, n)
	Y = make([]float64, n)
	for i := range t {
		t[i] = i
		X[i] = scanFloat()
		Y[i] = scanFloat()
	}

	total := 0.0
	cnt := 0.0
	for _, towns := range Permute(t) {
		cnt += 1
		from := towns[0]
		for i := 1; i < n; i++ {
			to := towns[i]
			total += calDist(from, to)
			from = to
		}
	}
	fmt.Println(total / cnt)
}
