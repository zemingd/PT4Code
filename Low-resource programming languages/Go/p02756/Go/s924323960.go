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

func Reverse(buf []byte) []byte {
	l := len(buf)
	res := make([]byte, l)
	for i := 0; i < l; i++ {
		res[i] = buf[l-i-1]
	}
	return res
}

func main() {
	var s string
	var n int
	fmt.Scan(&s, &n)

	var reverse bool
	head := []byte{}
	tail := []byte{}
	body := []byte(s)
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

	head = Reverse(head)
	if reverse {
		body = Reverse(body)
	}

	ans := []byte{}
	ans = append(ans, head...)
	ans = append(ans, body...)
	ans = append(ans, tail...)
	fmt.Println(string(ans))
}
