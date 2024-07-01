package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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
	sc.Split(bufio.ScanWords)

	str := getString()

	q := getInt()

	rev := 0
	var first bytes.Buffer
	var last bytes.Buffer
	for i := 0; i < q; i++ {
		t := getInt()
		if t == 1 {
			rev++
		} else if t == 2 {
			f, c := getInt(), getString()
			if (f == 1 && rev%2 == 0) || (f == 2 && rev%2 == 1) {
				first.WriteString(c)
			} else if (f == 2 && rev%2 == 0) || (f == 1 && rev%2 == 1) {
				last.WriteString(c)
			}
		}
	}

	var ans string
	if rev%2 == 1 {
		ans = reverse(last.String()) + reverse(str) + first.String()
	} else {
		ans = reverse(first.String()) + str + last.String()
	}
	fmt.Println(ans)
}
