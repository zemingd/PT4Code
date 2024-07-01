// Multiple of 9

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func mulOf9(s string) bool {
	var sum int64
	for _, c := range s {
		sum += (int64(c - '0'))
	}
	return sum%9 == 0
}

func nextInt(sc *bufio.Scanner) (int, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.Atoi(t)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	s := nextString(sc)

	r := mulOf9(s)
	if r {
		fmt.Println(`Yes`)
	} else {
		fmt.Println(`No`)
	}
}
