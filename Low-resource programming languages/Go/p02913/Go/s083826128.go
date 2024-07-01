package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 0), 1000000001*3)
	sc.Split(bufio.ScanWords)
	n, s := nextInt(), nextStr()
	rs := []rune(s)

	m := make(map[string]int)
	for i := 0; i < n; i++ {
		for j := i + 1; j <= n; j++ {
			t := string(rs[i:j])
			k, ok := m[t]
			switch {
			case !ok:
				m[t] = i
			case ok && k+len(t) <= i:
				m[t] = -1
			}
		}
	}

	ans := 0
	for key, value := range m {
		if value == -1 && len(key) > ans {
			ans = len(key)
		}
	}
	fmt.Println(ans)
}
