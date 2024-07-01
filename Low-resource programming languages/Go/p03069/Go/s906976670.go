package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

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

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 200200)
	N := getInt()
	s := getString()

	out(N, s)
	t := make([]byte, N)
	copy(t, []byte(s))
	cnt := 0
	for i := 1; i < N; i++ {
		if t[i] == '.' && t[i-1] == '#' {
			t[i] = '#'
			cnt++
		}
	}
	cnt1 := 0
	copy(t, []byte(s))
	for i := N - 1; i > 0; i-- {
		if t[i] == '.' && t[i-1] == '#' {
			t[i-1] = '.'
			cnt1++
		}
	}
	if cnt > cnt1 {
		out(cnt1)
	} else {
		out(cnt)
	}
}
