package main

import (
	"fmt"
	"math"
)

// 足場 i + 1 or i + 2

func main() {
	n := SingleInt()
	chs := make([]int, 0, n)
	for i := 0; i < n; i++ {
		chs = append(chs, SingleInt())
	}

	var nextIdx, result int
	for i, v := range chs {
		if i == nextIdx {
			base := v
			n1, n1ok := ChallengeInt(nextIdx+1, n, chs)
			n2, n2ok := ChallengeInt(nextIdx+2, n, chs)

			switch {
			case n1ok && n2ok:
				baseToN1 := int(math.Abs(float64(base - n1)))
				baseToN2 := int(math.Abs(float64(base - n2)))
				n1ToN2 := int(math.Abs(float64(n2 - n1)))

				if baseToN1+n1ToN2 > baseToN2 {
					result += baseToN2
					nextIdx += 2
				} else {
					result += n1
					nextIdx++
				}
			case n1ok && !n2ok:
				result += int(math.Abs(float64(base - n1)))
				nextIdx = n
			default:
			}
		}
		if nextIdx >= n {
			break
		}
	}

	fmt.Printf("%#v\n", result)
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func ChallengeInt(idx, lim int, chs []int) (int, bool) {
	var n int
	if idx >= lim {
		return n, false
	}

	return chs[idx], true
}
