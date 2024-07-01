package main

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	length := len(s)
	times := int(math.Pow(10, 100))
	lastPositions := make([]int, length)
	lefts := make([]int, 0)
	rights := make([]int, 0)
	for i := 0; i < length; i++ {
		if s[i] == 'L' {
			lefts = append(lefts, i)
		} else {
			rights = append(rights, i)
		}
	}

	curLeftIndex := 0
	curRightIndex := 0
	for i := 0; i < length; i++ {
		if s[i] == 'R' {
			for i > lefts[curLeftIndex] {
				curLeftIndex++
			}
			// 一番近い右側のLと行ったり来たり
			if (times-(lefts[curLeftIndex]-i))%2 == 0 {
				lastPositions[lefts[curLeftIndex]]++
			} else {
				lastPositions[lefts[curLeftIndex]-1]++
			}
		} else {
			for i < rights[curRightIndex] {
				curRightIndex++
			}
			// 一番近い左側のRと行ったり来たり
			if (times-(i-rights[curRightIndex]))%2 == 0 {
				lastPositions[rights[curRightIndex]]++
			} else {
				lastPositions[rights[curRightIndex]+1]++
			}
		}
		fmt.Println(lastPositions)
	}
	fmt.Println(JoinInts(lastPositions, " "))
}

func JoinInts(a []int, sep string) string {
	if len(a) == 0 {
		return ""
	}

	b := make([]string, len(a))
	for i, v := range a {
		b[i] = strconv.Itoa(v)
	}
	return strings.Join(b, sep)
}
