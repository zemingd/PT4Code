package main

import (
	"fmt"
	"strconv"
	"unicode/utf8"
)

const (
	IntMaxValue = int(^uint(0) >> 1)
)

func main() {
	N, M := readInt(), readInt()
	sc, MinDigit := make(map[int]int), IntMaxValue

	for i := 0; i < M; i++ {
		s, c := readInt(), readInt()

		v, ok := sc[s]
		if ok && v != c {
			fmt.Println(-1)
			return
		}

		sc[s] = c
		MinDigit = min(s, MinDigit)
	}

	answer := ""
	for i := 0; i < N; i++ {
		v, ok := sc[i+1]
		if ok {
			answer += strconv.Itoa(v)
		} else {
			if i == 0 {
				answer += "1"
			} else {
				answer += "0"
			}
		}
	}

	v, _ := strconv.Atoi(answer)
	vstr := strconv.Itoa(v)

	if utf8.RuneCountInString(vstr) != N {
		fmt.Println(-1)
		return
	}

	fmt.Println(v)
}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}

func min(a ...int) int {
	result := IntMaxValue

	for _, i := range a {
		if result > i {
			result = i
		}
	}

	return result
}
