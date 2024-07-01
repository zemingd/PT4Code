package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 100
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	a := scanInt(sc)
	b := scanInt(sc)

	ans := a + b
	if ans < a-b {
		ans = a - b
	}
	if ans < a*b {
		ans = a * b
	}
	fmt.Println(ans)
}
