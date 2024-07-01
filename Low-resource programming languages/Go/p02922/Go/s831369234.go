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

	n := 1
	ans := 0
	for n < b {
		n += (a - 1)
		ans++
	}

	fmt.Println(ans)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
