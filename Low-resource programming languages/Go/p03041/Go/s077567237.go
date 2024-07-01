package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	k := readInt()
	s := read()
	r := ""
	for i := 0; i < n; i++ {
		if i == k-1 {
			r += strings.ToLower(s[i:i+1])
		} else {
			r += s[i:i+1]
		}
	}
	fmt.Println(r)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}
