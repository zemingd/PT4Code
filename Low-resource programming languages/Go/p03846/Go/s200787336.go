package main

import (
	"fmt"
	//	"math"

	"sort"
	"strconv"
)

const (
	UINT_MAX_NUM = 63
	UINT_MAX     = 2 << 62
	LARGE_NUM    = 1000000007
	NUM          = 100000
)

func stringToint(s string) int {
	i, _ := strconv.ParseInt(s, 10, 64)
	return int(i)
}

func noResult() {
	fmt.Println(0)
}

func getRemain64() uint64 {
	return UINT_MAX % LARGE_NUM
}

func main() {
	var n int
	var tmp string
	//	data := make([]int, 0, 0)
	fmt.Scan(&n)

	data := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		data[i] = stringToint(tmp)
	}

	sort.Ints(data)
	totalNum := 0

	if len(data)%2 != 0 {
		if data[0] != 0 {
			noResult()
			return
		} else {
			for i := 0; i < (len(data)-1)/2; i++ {
				if !(data[i*2+1] == (i+1)*2 && data[i*2+2] == (i+1)*2) {
					noResult()
					return
				}
			}
			totalNum = (len(data) - 1) / 2
		}
	} else {
		for i := 0; i < len(data)/2; i++ {
			if !(data[i*2] == (i+1)*2-1 && data[i*2+1] == (i+1)*2-1) {
				noResult()
				return
			}
		}
		totalNum = len(data) / 2
	}

	getResult(totalNum)
}

func getResult(num int) {
	num1 := num / UINT_MAX_NUM
	numRemain := num % UINT_MAX_NUM

	var remain1 uint64 = 1
	for i := 0; i < int(num1); i++ {
		remain1 = (remain1 * getRemain64()) % LARGE_NUM
	}

	remain1 = (remain1 * (1 << uint(numRemain))) % LARGE_NUM
	fmt.Println(remain1)
}