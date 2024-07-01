//go:generate echo "https://atcoder.jp/contests/abc176/tasks/abc176_b"
package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"strconv"
)

type scanner struct{ *bufio.Scanner }

func newScanner(r io.Reader) *scanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	s.Buffer(nil, 100000000)
	return &scanner{s}
}

func (s *scanner) String() string {
	s.Scan()
	return s.Text()
}

func (s *scanner) StringSlice(l int) []string {
	if l == 0 {
		return []string{}
	}
	sl := make([]string, l, l)
	for i := range sl {
		sl[i] = s.String()
	}
	return sl
}

func solve(n string) bool {
	sum := 0
	for _, c := range n {
		n, _ := strconv.Atoi(string(c))
		sum += n
	}
	return sum%9 == 0
}

func solve2(n *big.Int) bool {
	z := big.NewInt(0)
	t := big.NewInt(10)

	sum := int64(0)
	for n.Cmp(z) > 0 {
		sum += new(big.Int).Mod(n, t).Int64()
		n.Div(n, t)
	}
	return sum%9 == 0
}

func (s *scanner) BigInt() *big.Int {
	s.Scan()
	n, _ := strconv.ParseInt(s.Text(), 10, 64)
	return big.NewInt(n)
}

func (s *scanner) BigIntSlice(l int) []*big.Int {
	if l == 0 {
		return []*big.Int{}
	}
	sl := make([]*big.Int, l, l)
	for i := range sl {
		sl[i] = s.BigInt()
	}
	return sl
}

func main() {
	scan := newScanner(os.Stdin)
	n := scan.BigInt()
	if solve2(n) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
