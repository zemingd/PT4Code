package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"

	combinations "github.com/mxschmitt/golang-combinations"
)

func main() {
	scn := bufio.NewScanner(os.Stdin)
	scn.Scan()
	params := strings.Split(scn.Text(), " ")
	paramN, _ := strconv.ParseInt(params[0], 10, 64)
	paramM, _ := strconv.ParseInt(params[1], 10, 64)
	paramX, _ := strconv.ParseInt(params[2], 10, 64)
	targets := []([13]int64){}
	for i := int64(0); i < paramN; i++ {
		scn.Scan()
		tmp := [13]int64{}
		booksStrParams := strings.Split(scn.Text(), " ")
		for i1 := int64(0); i1 < paramM+1; i1++ {
			conv, _ := strconv.ParseInt(booksStrParams[i1], 10, 64)
			tmp[i1] = conv
		}
		targets = append(targets, tmp)
	}

	com := combinations.Combinations(getBooksID(paramN), 0)
	priceSum := int64(10000000000)
	for _, books := range com {
		ps := int64(0)
		tmp := make([]int64, paramM)
		for _, bookIdxStr := range books {
			bookIdx, _ := strconv.Atoi(bookIdxStr)
			book := targets[bookIdx]
			ps += book[0]
			for i2, x := range book {
				if i2 < int(paramM) {
					tmp[i2] += x
				}
			}
		}
		if allAlgorismFinished(tmp, paramX) {
			priceSum = int64(math.Min(float64(priceSum), float64(ps)))
		}
	}

	if priceSum == int64(10000000000) {
		fmt.Println(-1)
	} else {
		fmt.Println(priceSum)
	}
}

func allAlgorismFinished(data []int64, limit int64) bool {
	for _, v := range data {
		if v < limit {
			return false
		}
	}
	return true
}

// getBooksId は本のIDをスライスで返す
func getBooksID(paramN int64) []string {
	result := []string{}
	for i := int64(0); i < paramN; i++ {
		result = append(result, strconv.FormatInt(i, 10))
	}
	return result
}
