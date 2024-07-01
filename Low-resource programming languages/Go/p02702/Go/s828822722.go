package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 100000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	return sc
}()

// Input string
func scanString() (s string) {
	sc.Scan()
	return sc.Text()
}

func main() {
	input := scanString()

	//var count int
	//	numLen := 4
	//
	//	for i := 1; ; i++ {
	//		s := strconv.Itoa(i * 2019)
	//		fmt.Println(s)
	//		numLen = len(s)
	//		if numLen > len(input) {
	//			break
	//		}
	//		for j := 0; j+len(s) <= len(input); j++ {
	//			if s == input[j:j+len(s)] {
	//				fmt.Println(s, ",", input[j:j+len(s)])
	//				count++
	//			}
	//		}
	//	}
	var num, count int
	almap := make(map[string]int)

	for i := 0; i < len(input)-3; i++ {
		for j := i + 3; j < len(input); j++ {
			if almap[input[i:j+1]] != 0 {
				count++
				continue
			}
			num, _ = strconv.Atoi(input[i : j+1])
			if num%2019 == 0 {
				count++
				almap[input[i:j+1]]++
			}
		}
	}
	fmt.Println(count)
}
