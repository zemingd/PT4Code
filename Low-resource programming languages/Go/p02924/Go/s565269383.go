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
	total := 0
	for i := n-1; i > 0; i-- {
		total += i
	}
	fmt.Println(total)
}
