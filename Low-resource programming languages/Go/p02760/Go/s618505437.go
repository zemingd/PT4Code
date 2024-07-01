package main

import (
	"bufio"
	"os"
	"strconv"
)

func main() {
	buf.Split(bufio.ScanWords)

	size := 3

	a := make([][]int, size)
	for i := range a {
		a[i] = scanInts(size)
	}
	n := scanInt()
	b := scanInts(n)

	marked := make([][]bool, size)
	for i := range marked {
		marked[i] = make([]bool, size)
	}

	for _, number := range b {
		for i := 0; i < size; i++ {
			for j := 0; j < size; j++ {
				if number == a[i][j] {
					marked[i][j] = true
				}
			}
		}
	}

	for i := 0; i < size; i++ {
		if marked[i][0] && marked[i][1] && marked[i][2] {
			println("Yes")
			return
		}
	}

	for j := 0; j < size; j++ {
		if marked[0][j] && marked[1][j] && marked[2][j] {
			println("Yes")
			return
		}
	}

	if marked[0][0] && marked[1][1] && marked[2][2] {
		println("Yes")
		return
	}
	if marked[2][0] && marked[1][1] && marked[0][2] {
		println("Yes")
		return
	}

	println("No")
}

var buf = bufio.NewScanner(os.Stdin)

func scanInt() int {
	buf.Scan()
	i, _ := strconv.Atoi(buf.Text())
	return i
}

func scanInts(n int) []int {
	a := make([]int, n)
	for k, _ := range a {
		a[k] = scanInt()
	}
	return a
}

func scanString() string {
	buf.Scan()
	return buf.Text()
}

func scanStrings(n int) []string {
	a := make([]string, n)
	for k, _ := range a {
		a[k] = scanString()
	}
	return a
}
