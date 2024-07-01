package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readint()
	//S := readstr()
	//T := readstr()
	var S, T string
	fmt.Scan(&S, &T)
	ans := make([]byte, N*2)
	for i := 0; i < N; i++ {
		ans = append(ans, S[i])
		ans = append(ans, T[i])
	}
	fmt.Println(string(ans))
}

const (
	iobufsize = 1 * 1024 * 1024 // 1 MB
)

var stdinsc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, iobufsize), iobufsize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func readint() int {
	stdinsc.Scan()
	v, err := strconv.Atoi(stdinsc.Text())
	if err != nil {
		panic(err)
	}
	return v
}

func readstr() string {
	stdinsc.Scan()
	return stdinsc.Text()
}

func pow(x, y int) int {
	if y < 1 {
		return 1
	}
	return x * pow(x, y-1)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
