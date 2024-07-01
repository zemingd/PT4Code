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
	S := getString()
	K := getInt()

	changeCnt := 0
	newStrings := S[:1]

	if len(S) == 1 {
		changeCnt = K / 2
	} else {
		for i := 1; i < len(S); i++ {
			if S[i] == newStrings[i-1] {
				changeCnt++
				newStrings += "0"
			} else {
				newStrings += string(S[i])
			}
		}
		changeCnt = changeCnt * K

		if newStrings[0] == newStrings[len(newStrings)-1] {
			changeCnt += K-1
		}
	}

	fmt.Println(changeCnt)
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
