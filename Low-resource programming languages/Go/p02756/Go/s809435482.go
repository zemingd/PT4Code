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

	front := make([]byte, 1e6)
	tail := make([]byte, 1e6)
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
				if reverse == false {
					front = append(front, []byte(c)...)
				} else {
					tail = append(tail, []byte(c)...)
				}
			case 2:
				if reverse == false {
					tail = append(tail, []byte(c)...)
				} else {
					front = append(front, []byte(c)...)
				}
			}
		}
	}
	front = Reverse(front)
	ans := append(front, []byte(s)...)
	ans = append(ans, tail...)
	if reverse == true {
		ans = Reverse(ans)
	}
	fmt.Println(string(ans))
}

func Reverse(s []byte) []byte {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
	return s
}
