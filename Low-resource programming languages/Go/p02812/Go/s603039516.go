package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func countChainingABC(n int, s string) (count int) {
	sr := []rune(s)
	for i := 0; i < n-2; i++ {
		if sr[i] != 'A' {
			continue
		}
		if string(sr[i:i+3]) == "ABC" {
			count++
			i += 2
		}
	}
	return
}

func main() {
	n, s := nextInt(), nextString()
	fmt.Println(countChainingABC(n, s))
}
