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

	n := scanInt(sc)

	ans := "Yes"
	if n > 9*9 {
		ans = "No"
	} else if n >= 10 {
		for i := 2; i <= 9; i++ {
			if n%i != 0 || n/i > 9 {
				ans = "No"
				break
			}
		}
	}
	fmt.Println(ans)
}
