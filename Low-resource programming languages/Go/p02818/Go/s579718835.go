package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	Takahashi, Aoki, Count := readInt(), readInt(), readInt()
	Takahashi -= Count
	if Takahashi < 0 {
		Aoki -= abs(Takahashi)
		Takahashi = 0
		if Aoki < 0 {
			Aoki = 0
		}
	}

	fmt.Println(Takahashi, Aoki)
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
}

func readString() string {
	scanner.Scan()
	return scanner.Text()
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func abs(i int) int {
	if i >= 0 {
		return i
	} else {
		return i * -1
	}
}
