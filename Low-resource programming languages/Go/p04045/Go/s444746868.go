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
	ds := getIntSlice(k)

	l := len(strconv.Itoa(n))

	for i := 0; i < l; i++ {
		x := (n / pow(10, i)) % 10
		cnt := 0
		for {
			matchDislikeNumber := false
			for _, d := range ds {
				if x == d {
					matchDislikeNumber = true
					cnt += pow(10, i)
					x = (x + 1) % 10
					break
				}
			}
			if !matchDislikeNumber {
				break
			}
		}
		n += cnt
	}

	fmt.Println(n)
}

func pow(a, b int) int {
	x := float64(a)
	y := float64(b)
	return int(math.Pow(x, y))
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
