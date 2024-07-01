package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	s := next()

	easts, wests := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			if i == 0 {
				easts[i] = 1
			} else {
				easts[i] = easts[i-1]+1
				wests[i] = wests[i-1]
			}
		} else {
			if i == 0 {
				wests[i] = 1
			} else {
				wests[i] = wests[i-1]+1
				easts[i] = easts[i-1]
			}
		}
	}

	min := 300000
	for i := 0; i < n; i++ {
		// 右にいるeastの数
		rightEast := easts[n-1] - easts[i]
		leftWest := 0
		if i != 0 {
			leftWest = wests[i-1]
		}
		if min > rightEast + leftWest {
			min = rightEast + leftWest
		}
	}

	fmt.Println(min)
}