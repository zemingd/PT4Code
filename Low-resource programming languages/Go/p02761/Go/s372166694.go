package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var s []int
var c []int

func checkDigits(num int) int {
	if num == 0 {
		return 1
	}

	digits := 0
	for num > 0 {
		num /= 10
		digits++
	}

	return digits
}

var dic map[int]int

func main() {
	var n, m int

	n = readInt()
	m = readInt()
	dic = make(map[int]int, 0)

	s = make([]int, m)
	c = make([]int, m)
	min, max := math.MaxInt64, 0
	for i := 0; i < m; i++ {
		s[i] = readInt()
		c[i] = readInt()
		dic[s[i]] = c[i]
		if s[i] > max {
			max = s[i]
		}
		if s[i] < min {
			min = s[i]
		}
		//fmt.Printf("s[%d] = %d, c[%d] = %d\n", i, s[i], i, c[i])
	}

	//fmt.Printf("n = %d, m = %d\n", n, m)
	/*
		for k, v := range dic {
			fmt.Printf("dic[%d] = %d\n", k, v)
		}
	*/
	if n == max {
		resStr := make([]rune, max)
		for i := 1; i <= max; i++ {
			if _, exist := dic[i]; exist {
				resStr[i-1] = rune(dic[i] + '0')
			} else {
				resStr[i-1] = '0'
			}
		}

		fmt.Println(string(resStr))

	} else {
		fmt.Println(-1)

	}
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
