package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var in = newIo(bufio.NewScanner(os.Stdin))

func main() {
	var s = in.next()
	var k = in.nextLong()
	print(solve(s, k))
}

func print(result string) {
	fmt.Println(result)
}

func solve(s string, k int64) string {
	var result string
	const d = 5000000000000000
	for i := 0; i < len(s); i++ {
		result = string(s[0])
		c := string(s[i])
		r, _ := strconv.ParseInt(c, 10, 64)
		k = k - (r * d)
		if k < 0 {
			break
		}
	}
	return result
}

func count(n int, c int) bool {
	var count = 1
	for i := 2; i <= n; i++ {
		var e = 1
		for {
			if n%i != 0 {
				break
			}
			n = n / i
			e++
		}
		count = count * e
	}
	return count == c
}

type io struct {
	sc *bufio.Scanner
}

func newIo(sc *bufio.Scanner) *io {
	i := new(io)
	i.sc = sc
	i.sc.Split(bufio.ScanWords)
	return i
}
func (i *io) next() string {
	i.sc.Scan()
	return i.sc.Text()
}
func (i *io) nextInt() int {
	in, _ := strconv.Atoi(i.next())
	return in
}

func (i *io) nextLong() int64 {
	in, _ := strconv.ParseInt(i.next(), 10, 64)
	return in
}
