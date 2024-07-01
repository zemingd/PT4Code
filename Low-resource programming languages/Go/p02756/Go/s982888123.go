package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	s := readString()
	q := readInt()

	reverse := false
	for i := 0; i < q; i++ {
		t := readInt()
		switch t {
		case 1:
			reverse = !reverse
		case 2:
			f := readInt()
			c := readString()
			switch f {
			case 1:
				if reverse {
					s = s + c
				} else {
					s = c + s
				}
			case 2:
				if reverse {
					s = c + s
				} else {
					s = s + c
				}
			}
		}
	}
	if reverse {
		fmt.Println(Reverse(s))
	} else {
		fmt.Println(s)
	}
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
