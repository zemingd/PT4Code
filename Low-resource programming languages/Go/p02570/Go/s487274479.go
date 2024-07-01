//Don't be late

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func willBeLate(d, t, s int) bool {

	return d <= s*t
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

	d, _ := nextInt(sc)
	t, _ := nextInt(sc)
	s, _ := nextInt(sc)

	if willBeLate(d, t, s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
