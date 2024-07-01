package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000000
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func main() {
	n := getInt()

	numMap1 := make(map[int]int)
	numMap2 := make(map[int]int)

	for i := 0; i < n; i++ {
		v := getInt()
		if i % 2 == 1 {
			numMap1[v]++
		} else {
			numMap2[v]++
		}
	}

	if len(numMap1) == 1 && len(numMap2) == 1 {
		num1 := 0
		for num := range numMap1 {
			num1 = num
		}

		num2 := 0
		for num := range numMap2 {
			num1 = num
		}

		if num1 == num2 {
			fmt.Println(n / 2)
			return
		}
	}

	maxNum1 := [][]int{{0, 0}, {0, 0}}
	for num, cnt := range numMap1 {
		if maxNum1[0][1] < cnt {
			maxNum1[0][0] = num
			maxNum1[0][1] = cnt
		} else if maxNum1[1][1] < cnt {
			maxNum1[1][0] = num
			maxNum1[1][1] = cnt
		}
	}

	maxNum2 := [][]int{{0, 0}, {0, 0}}
	for num, cnt := range numMap2 {
		if maxNum2[0][1] < cnt {
			maxNum2[0][0] = num
			maxNum2[0][1] = cnt
		} else if maxNum2[1][1] < cnt {
			maxNum2[1][0] = num
			maxNum2[1][1] = cnt
		}
	}

	var changeCnt1, changeCnt2 int

	if maxNum1[0][0] != maxNum2[0][0] {
		changeCnt1 = n/2 - maxNum1[0][1]
		changeCnt2 = n/2 - maxNum2[0][1]
	} else {
		if maxNum1[0][1] + maxNum2[1][1] >= maxNum1[1][1] + maxNum2[0][1] {
			changeCnt1 = n/2 - maxNum1[0][1]
			changeCnt2 = n/2 - maxNum2[1][1]
		} else {
			changeCnt1 = n/2 - maxNum1[1][1]
			changeCnt2 = n/2 - maxNum2[0][1]
		}
	}

	fmt.Println(changeCnt1 + changeCnt2)
}

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
