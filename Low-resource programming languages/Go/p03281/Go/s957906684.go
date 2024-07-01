package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var in = newIo(bufio.NewScanner(os.Stdin))

func main() {
	var n = in.nextInt()
	print(solve(n))
}

func print(result int) {
	fmt.Println(result)
}

func solve(n int) int {
	var sum = 0
	for i := 1; i <= n; i++ {
		if i%2 == 0 {
			continue
		}
		if count(i, 8) {
			sum++
		}
	}
	return sum
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
