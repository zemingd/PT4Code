package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	a, err := strconv.Atoi(scanner.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func scanByte() byte {
	scanner.Scan()
	return []byte(scanner.Text())[0]
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	scanner.Split(bufio.ScanWords)

	s := scanText()

	var space [500100]byte
	si := 200050
	ei := si + len(s)
	copy(space[si:], []byte(s))

	/*
		space := make([]byte, 5*int(math.Pow(10, 5)))
		si := 2 * int(math.Pow(10, 5))
		ei := si + len(s)
		for i := si; i < ei; i++ {
			space[i] = s[i-si]
		}
	*/

	b := false

	q := scanInt()
	for i := 0; i < q; i++ {
		t := scanInt()
		if t == 1 {
			b = !b
		} else { // t == 2
			f := scanInt()
			c := scanByte()
			if f == 1 && !b || f == 2 && b { // 先頭
				si--
				space[si] = c
			} else {
				ei++
				space[ei-1] = c
			}
		}
	}

	str := string(space[si:ei])
	if !b {
		fmt.Println(str)
	} else {
		fmt.Println(reverse(str))
	}
}
