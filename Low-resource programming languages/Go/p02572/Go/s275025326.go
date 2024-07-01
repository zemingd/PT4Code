package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
	return scanner.Text()
}
func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}
func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	extra := 0
	if os.Getenv("I") == "IronMan" {
		fp, _ = os.Open(os.Getenv("END_GAME"))
		extra = 100
	}
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
	for i := 0; i < extra; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	aa := make([]mint, n)
	ss := make([]mint, n+1)
	for i := 0; i < n; i++ {
		aa[i] = mint(getNextInt(scanner))
		ss[i+1] = ss[i].add(aa[i])
	}
	var ans mint
	for i := 0; i < n; i++ {
		ans.addAs(aa[i].mul(ss[i]))
	}
	fmt.Fprintln(writer, ans)
}

type mint int64

func (mt mint) mod() mint {
	m := mint(1e9 + 7)
	mt %= m
	if mt < 0 {
		return mt + m
	}
	return mt
}
func (mt mint) inv() mint {
	return mt.pow(mint(0).sub(2))
}
func (mt mint) pow(n mint) mint {
	p := mint(1)
	for n > 0 {
		if n&1 == 1 {
			p.mulAs(mt)
		}
		mt.mulAs(mt)
		n >>= 1
	}
	return p
}
func (mt mint) add(x mint) mint {
	return (mt + x).mod()
}
func (mt mint) sub(x mint) mint {
	return (mt - x).mod()
}
func (mt mint) mul(x mint) mint {
	return (mt * x).mod()
}
func (mt mint) div(x mint) mint {
	return mt.mul(x.inv())
}
func (mt *mint) addAs(x mint) *mint {
	*mt = mt.add(x)
	return mt
}
func (mt *mint) subAs(x mint) *mint {
	*mt = mt.sub(x)
	return mt
}
func (mt *mint) mulAs(x mint) *mint {
	*mt = mt.mul(x)
	return mt
}
func (mt *mint) divAs(x mint) *mint {
	*mt = mt.div(x)
	return mt
}
