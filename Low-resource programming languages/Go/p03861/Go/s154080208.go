package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a := getInt()
	b := getInt()
	x := getInt()

	var ans int
	if a == 0 {
		ans = b/x + 1
	} else {
		ans = b/x - (a-1)/x
	}

	fmt.Println(ans)
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
