package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	P := map[int]int{}
	P[readInt()] = 1
	P[readInt()] = 1
	Loop(1, 4, func(i int) {
		if _, Exists := P[i]; !Exists {
			fmt.Println(i)
			os.Exit(0)
		}
	})
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	//scanner.Split(bufio.ScanWords)
	scanner.Split(bufio.ScanLines)
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