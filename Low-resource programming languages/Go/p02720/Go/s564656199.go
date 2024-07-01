package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)
	answer := createLunlunNumbers(3234566667, k)
	fmt.Println(answer)
}

func findKthLunlun(k int) int {
	if k < 13 {
		return k
	}
	cache = make(map[string]bool)
	nth := 12
	for i := 21; i <= 3234566667; {
		fmt.Println(i, nth)
		strI := strconv.Itoa(i)
		if isLunlun(strI) {
			nth++
			if nth == k {
				return i
			}
			i++
		} else {
			if len(strI) > 2 {
				skip := 8
				for j := 2; j < len(strI); j++ {
					if !isLunlun(strI[0:j]) {
						base := len(strI) - j
						skip = 7 * pow10(base-1)
						break
					}
				}
				i += skip
			} else {
				i += 8
			}
		}
	}
	return -1
}

var cache map[string]bool

func createLunlunNumbers(max, nth int) int {
	if nth < 10 {
		return nth
	}
	digitMap := make([][]int, 20)
	digitMap[0] = []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	digitIndex := 0
	lastNumber := 0
	for counter := 9; counter < nth && max > lastNumber; {
		for _, v := range digitMap[digitIndex] {
			strV := strconv.Itoa(v)
			lastDigit := int(strV[len(strV)-1]) - 48
			if lastDigit != 0 {
				digitMap[digitIndex+1] = append(digitMap[digitIndex+1], v*10+lastDigit-1)
				counter++
				if counter == nth {
					return v*10 + lastDigit - 1
				}
			}
			digitMap[digitIndex+1] = append(digitMap[digitIndex+1], v*10+lastDigit)
			counter++
			if counter == nth {
				return v*10 + lastDigit
			}
			if lastDigit != 9 {
				digitMap[digitIndex+1] = append(digitMap[digitIndex+1], v*10+lastDigit+1)
				counter++
				if counter == nth {
					return v*10 + lastDigit + 1
				}
			}

			lastNumber = v*10 + lastDigit + 1
		}
		digitIndex++
	}
	return -1
}

func isLunlun(strK string) bool {
	if cache[strK] {
		return true
	}

	prev := rune(strK[0])
	for _, v := range strK {
		if abs(int(prev-v)) <= 1 {
			prev = v
		} else {
			return false
		}
	}
	cache[strK] = true
	return true
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func pow10(n int) int {
	x := 10
	for i := 0; i < n; i++ {
		x *= 10
	}
	return x
}
