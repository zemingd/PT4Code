package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	max := 4 * 100000
	buf := make([]byte, max)
	sc.Buffer(buf, max)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := nextString()

	var count int
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			count++
		}
	}

	min := count
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			count--
		}
		if i > 0 && s[i-1] == 'W' {
			count++
		}
		if count < min {
			min = count
		}
	}

	fmt.Println(min)
}
