package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := getString()
	k := getInt()

	ans := "1"
	for i, r := range s {
		if i >= k {
			break
		}

		if r != '1' {
			ans = string(r)
			break
		}
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
