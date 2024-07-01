package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	// sc.Split(bufio.ScanWords)
	s := nextLine()
	var h, t int
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' {
			h = i
			break
		}
	}
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == 'Z' {
			t = i
			break
		}
	}
	fmt.Println(t - h + 1)
}
