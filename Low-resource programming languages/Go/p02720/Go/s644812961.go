package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)
	answer := findKthLunlun(k)
	fmt.Println(answer)
}

func findKthLunlun(k int) int {
	if k < 13 {
		return k
	}
	cache = make(map[string]bool)
	nth := 12
	for i := 21; i <= 3234566667; {
		
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
						skip = pow10(len(strI) - j)
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

func pow10(x, n int) int {
	for i := 0; i < n; i++ {
		x *= 10
	}
	return x
}
