package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	s := getString()

	start := 0
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' {
			start = i
			break
		}
	}
	end := len(s)
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == 'Z' {
			end = i + 1
			break
		}
	}
	out(end - start)
}
