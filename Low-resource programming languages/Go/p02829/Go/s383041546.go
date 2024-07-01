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
	a, b := nextInt(), nextInt()
	if a > b {
		a, b = b, a
	}
	result := 0
	switch a + b {
	case 3:
		result = 3
	case 4:
		result = 2
	case 5:
		result = 1
	}
	fmt.Println(result)
}
