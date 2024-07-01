package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func getInt() (n int) {
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	return n
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	cnt := 0
	N := getInt()
	S := getString()

	for i := 0; i < N; i++ {
		if i == 0 {
			cnt++
		} else {
			if S[i-1] == S[i] {

			} else {
				cnt++
			}
		}
	}

	fmt.Println(cnt)
}
