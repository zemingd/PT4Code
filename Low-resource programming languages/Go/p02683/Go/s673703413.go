package main

import (
	"bufio"
	"fmt"
	"math"
	"math/bits"
	"os"
	"strconv"
	"strings"
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

	com := combinations(getBooksID(paramN), 0)
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

// Combinations returns combinations of n elements for a given string array.
// For n < 1, it equals to All and returns all combinations.
func combinations(set []string, n int) (subsets [][]string) {
	length := uint(len(set))

	if n > len(set) {
		n = len(set)
	}

	// Go through all possible combinations of objects
	// from 1 (only first object in subset) to 2^length (all objects in subset)
	for subsetBits := 1; subsetBits < (1 << length); subsetBits++ {
		if n > 0 && bits.OnesCount(uint(subsetBits)) != n {
			continue
		}

		var subset []string

		for object := uint(0); object < length; object++ {
			// checks if object is contained in subset
			// by checking if bit 'object' is set in subsetBits
			if (subsetBits>>object)&1 == 1 {
				// add object to subset
				subset = append(subset, set[object])
			}
		}
		// add subset to subsets
		subsets = append(subsets, subset)
	}
	return subsets
}
