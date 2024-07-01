// Multiple of 9

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func mulOf9(s string) bool {
	sum := 0
	for _, c := range s {
		sum += (int(c - '0'))
		if 8 < sum {
			sum %= 9
		}
	}
	return sum == 0
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
