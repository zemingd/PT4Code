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

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	_, k, s := nextInt(), nextInt(), nextString()

	runes := []rune(s)
	toLower := func(l rune) rune {
		switch l {
		case 'A':
			return 'a'
		case 'B':
			return 'b'
		case 'C':
			return 'c'
		default:
			return '0'
		}
	}
	runes[k] = toLower(runes[k])

	s = string(runes)

	fmt.Println(s)
}
