package main

import (
	"bufio"
	"fmt"
	"strconv"
)

type ByValue []float64

func (s ByValue) Len() int           { return len(s) }
func (s ByValue) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s ByValue) Less(i, j int) bool { return s[i] < s[j] }

func input() string {
	var s string
	_, _ = fmt.Scan(&s)
	return s
}

func inputLn() string {
	var s string
	_, _ = fmt.Scanln(&s)
	return s
}

func inputByScanner(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func convListStrToInt(strList []string) []int {
	intList := make([]int, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = intV
	}
	return intList
}

func convListStrToFloat(strList []string) []float64 {
	intList := make([]float64, len(strList))
	for k, v := range strList {
		intV, _ := strconv.Atoi(v)
		intList[k] = float64(intV)
	}
	return intList
}

func main() {
	n, _ := strconv.Atoi(input())
	m, _ := strconv.Atoi(inputLn())
	dp := make([]int, m)
	for i := 0; i < n; i++ {
		a, _ := strconv.Atoi(input())
		b, _ := strconv.Atoi(inputLn())
		limit := m - a
		if limit < 0 {
			continue
		}
		dpMin := 1000000
		dpMinIndex := 0
		//fmt.Println("limit")
		//fmt.Println(limit)
		for j := 0; j <= limit; j++ {
			if dp[j] <= dpMin {
				//fmt.Println("更新")
				dpMin = dp[j]
				dpMinIndex = j
			}
		}
		//fmt.Println("dpMinIndex")
		//fmt.Println(dpMinIndex)
		if dp[dpMinIndex] < b {
			dp[dpMinIndex] = b
		}
		// swap
		if dp[limit] < dp[dpMinIndex] {
			swap := dp[limit]
			dp[limit] = dp[dpMinIndex]
			dp[dpMinIndex] = swap
		}
	}

	//fmt.Println(dp)

	res := 0
	for _, v := range dp {
		res += v
	}

	fmt.Println(res)
}
