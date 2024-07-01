// Multiple of 9

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func mulOf9(s string) bool {
	ss := strings.Split(s, ``)

	sum := 0
	for i := 0; i < len(ss); i++ {
		n, _ := strconv.Atoi(ss[i])
		sum += n
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