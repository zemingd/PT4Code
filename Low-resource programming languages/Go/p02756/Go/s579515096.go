package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func Reverse(s string) string {
	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func main() {
	s := scanString()
	n := scanInt()

	var reverse bool
	head := []byte{}
	tail := []byte{}
	for i := 0; i < n; i++ {
		t := scanInt()
		if t == 1 {
			head, tail = tail, head
			reverse = !reverse
		} else {
			f, c := scanInt(), scanString()

			if f == 1 {
				head = append(head, c[0])
			} else {
				tail = append(tail, c[0])
			}
		}
	}

	if reverse {
		s = Reverse(s)
	}
	s = Reverse(string(head)) + s + string(tail)
	fmt.Println(s)
}
