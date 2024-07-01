package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	k := getInt()
	isDisliked := make([]bool, 10)
	for i := 0; i < k; i++ {
		isDisliked[getInt()] = true
	}

	for {
		s := strconv.Itoa(n)
		flag := true
		for i, c := range s {
			if isDisliked[atoi(string(c))] {
				n += pow(10, len(s)-i-1)
				flag = false
				break
			}
		}
		if flag {
			break
		}
	}

	fmt.Println(n)
}

func pow(a, b int) int {
	x := float64(a)
	y := float64(b)
	return int(math.Pow(x, y))
}

func atoi(s string) int {
	ret, _ := strconv.Atoi(s)
	return ret
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}