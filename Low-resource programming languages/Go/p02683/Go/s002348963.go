package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	initialBufSize = 10000
	maxBufSize     = 100000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	return sc
}()

func scanIntNums() (nums []int) {
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	nums = make([]int, len(numString))
	var err error

	for i := 0; i < len(nums); i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}
	return nums
}
func main() {
	inputs := scanIntNums()
	N := inputs[0]
	M := inputs[1]
	X := inputs[2]

	books := make([][]int, N)

	for i := 0; i < N; i++ {
		inputs := scanIntNums()
		books[i] = inputs
	}

	var tmp int
	min := -1
	var patterns [][]int
	var skipFlag bool
	for i := 1; i <= N; i++ {
		patterns = append(patterns, choose(i, N)...)
	}
	for _, pattern := range patterns {
		tmpArray := make([]int, M)
		tmp = 0
		skipFlag = false

		for _, num := range pattern {
			tmp += books[num-1][0]
			for i := 1; i <= M; i++ {
				tmpArray[i-1] += books[num-1][i]
			}
		}
		for _, sum := range tmpArray {
			if sum < X {
				skipFlag = true
			}
		}
		if !skipFlag && (tmp < min || min == -1) {
			min = tmp
		}
	}
	fmt.Println(min)

}

func choose(N, M int) [][]int {
	var count int

	var result [][]int
	var tmp []int

	for bits := 0; bits < (1 << uint64(M)); bits++ {
		for i := 0; i < M; i++ {
			if (bits>>uint64(i))&1 == 1 {
				if count == 0 {
					tmp[0] = i + 1
				} else {
					tmp = append(tmp, i+1)
				}
				count++
			}
		}
		if count == N {
			result = append(result, tmp)
		}
		count = 0
		tmp = make([]int, 1)
	}

	return result
}
