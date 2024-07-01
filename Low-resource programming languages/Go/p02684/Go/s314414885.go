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
	K := inputs[1]
	dist := scanIntNums()

	tmp := 1
	roopMap := make(map[int]int, N)
	var roopSize, offset int
	for i := 0; i < K; i++ {
		if roopMap[tmp-1] != 0 {
			roopSize = i - roopMap[tmp-1]
			offset = roopMap[tmp-1] - 1
			break
		}
		roopMap[tmp-1] = i
		tmp = dist[tmp-1]
	}
	//fmt.Println("roopMap", roopMap)
	//fmt.Println("roopSize:", roopSize)
	//fmt.Println("offset:", offset)
	step := ((K - offset) % roopSize) + offset

	tmp = 1
	for i := 0; i < step; i++ {
		tmp = dist[tmp-1]
	}

	fmt.Println(tmp)

}
