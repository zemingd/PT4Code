package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a, b, c := nextInt(), nextInt(), nextInt()
	var result string
	if (a == b && b != c) || (b == c && c != a) || (c == a && a != b) {
		result = "Yes"
	} else {
		result = "No"
	}
	fmt.Println(result)
}
