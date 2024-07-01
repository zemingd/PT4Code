package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc      = bufio.NewScanner(os.Stdin)
	mod int = 1e9 + 7
)

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	S := getString()
	K := getInt()

	oldS := []byte(S)

	changeCnt := 0
	if K <= 2 {
		var str []byte
		for i := 0; i < K; i++ {
			str = append(str, oldS...)
		}

		newS := convert(str)
		for _, c := range newS {
			if c == '*' {
				changeCnt++
			}
		}
	} else {
		var str []byte
		str = append(str, oldS...)
		str = append(str, oldS...)
		str = append(str, oldS...)

		newS := convert(str)

		leftCnt := 0
		middleCnt := 0
		rightCnt := 0

		for _, c := range newS[0:len(oldS)] {
			if c == '*' {
				leftCnt++
			}
		}
		for _, c := range newS[len(oldS):len(oldS)*2] {
			if c == '*' {
				middleCnt++
			}
		}
		for _, c := range newS[len(oldS)*2:len(oldS)*3] {
			if c == '*' {
				rightCnt++
			}
		}

		changeCnt = leftCnt + (K-2) * middleCnt + rightCnt
	}

	fmt.Println(changeCnt)
}

func convert(str []byte) []byte {
	if len(str) == 1 {
		return str
	} else {
		for i := 1; i < len(str); i++ {
			if str[i] == str[i-1] {
				str[i] = '*'
			}
		}
		return str
	}
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
	fmt.Println(strArray[1 : len(strArray)-1])
}

func calcMod(x int) int {
	return x % mod
}
