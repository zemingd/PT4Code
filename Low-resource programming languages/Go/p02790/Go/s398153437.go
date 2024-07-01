package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	a, b := nextInt(), nextInt()

	var o, r int
	if a < b {
		o, r = a, b
	} else {
		o, r = b, a
	}

	result := strings.Repeat(strconv.Itoa(o), r)

	fmt.Println(result)
}
