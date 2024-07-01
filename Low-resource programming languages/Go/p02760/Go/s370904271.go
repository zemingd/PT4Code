package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var a [][]int
var b []int
var check [][]bool

func checkHit(num int) bool {
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if num == a[i][j] {
				check[i][j] = true
				return checkBingo()
			}
		}
	}

	return false
}

func checkBingo() bool {
	for i := 0; i < 3; i++ {
		if check[i][0] && check[i][1] && check[i][2] {
			return true
		}
		if check[0][i] && check[1][i] && check[2][i] {
			return true
		}
	}

	if check[0][0] && check[1][1] && check[2][2] {
		return true
	}

	if check[0][2] && check[1][1] && check[2][0] {
		return true
	}

	return false
}

func main() {
	a = make([][]int, 3)
	check = make([][]bool, 3)
	for i := 0; i < 3; i++ {
		a[i] = make([]int, 3)
		check[i] = make([]bool, 3)
		for j := 0; j < 3; j++ {
			a[i][j] = readInt()
			check[i][j] = false
		}
	}

	n := readInt()

	b = make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()

		if checkHit(b[i]) {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
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
