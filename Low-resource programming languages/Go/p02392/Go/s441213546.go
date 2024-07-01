package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := nextInt(sc)
	b := nextInt(sc)
	c := nextInt(sc)
	fmt.Println(resolve(a, b, c))
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextInt(sc *bufio.Scanner) int64 {
	i, err := strconv.ParseInt(nextString(sc), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func resolve(a, b, c int64) string {
	if !(a < b) {
		return "No"
	}
	if !(b < c) {
		return "No"
	}
	return "Yes"
}

