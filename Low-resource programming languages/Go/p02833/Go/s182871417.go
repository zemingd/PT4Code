package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
	mod int = 1e9 + 7
)

func main() {
	N := getInt()

	// 奇数は0
	if N%2 == 1 {
		fmt.Println(0)
		return
	}

	// 10未満は0
	if N < 10 {
		fmt.Println(0)
		return
	}

	// 不要な端数を削除
	if N % 10 != 0 {
		N -= N % 10
	}

	// 末尾が0になる回数
	zCnt := N / 10

	length := 1
	tmp := zCnt
	for ; ; {
		r := tmp / 10
		length++
		tmp /= 10
		if r == 0 {
			break
		}
	}

	result := 0
	baseCnt := 0
	for i := 0; i < length; i++ {
		baseCnt += pow(10, i)

		num := zCnt % 10
		result += baseCnt * num

		zCnt /= 10
	}

	fmt.Println(result)
}

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
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
	fmt.Println(strArray[1 : len(strArray)-1])
}

func calcMod(x int) int {
	return x % mod
}
