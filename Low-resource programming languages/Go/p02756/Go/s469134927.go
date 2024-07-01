package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	str := getString()
	q := getInt()

	rev := false
	var first bytes.Buffer
	var last bytes.Buffer
	for i := 0; i < q; i++ {
		t := getInt()
		if t == 1 {
			rev = !rev
		} else if t == 2 {
			f, c := getInt(), getString()
			if (f == 1 && !rev) || (f == 2 && rev) {
				first.WriteString(c)
			} else if (f == 2 && !rev) || (f == 1 && rev) {
				last.WriteString(c)
			}
		}
	}

	var ans string
	if rev {
		ans = reverse(last.String()) + reverse(str) + first.String()
	} else {
		ans = reverse(first.String()) + str + last.String()
	}
	fmt.Println(ans)
}
