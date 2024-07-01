package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
	return scanner
}
func getNextString(scanner *bufio.Scanner) string {
	scanner.Scan()
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
func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	cnt := 0
	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
		cnt = 1
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}
	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)
	solve(scanner, writer)
	for i := 0; i < cnt; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
	writer.Flush()
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	k := getNextInt(scanner)
	pp := modPascal(n + 1 + k)
	for i := 1; i <= k; i++ {
		if n-k+1 < 0 {
			fmt.Fprintln(writer, pp[k-1][i-1])
			continue
		}
		fmt.Fprintln(writer, pp[k-1][i-1].mul(pp[n-k+1][i]))
	}
}
func modPascal(n int) [][]mint {
	pp := make([][]mint, n+1)
	p := make([]mint, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = 1
		for j := i - 1; j > 0; j-- {
			p[j].addAs(p[j-1])
		}
		pp[i] = make([]mint, i+1)
		copy(pp[i], p[:i+1])
	}
	return pp
}

type mint int

func (mt mint) mod() mint {
	m := mint(1e9 + 7)
	mt %= m
	if mt < 0 {
		return mt + m
	}
	return mt
}
func (mt mint) inv() mint {
	var m, y mint
	m.subAs(2)
	dbl := mt
	y = 1
	for i := 0; i < 31; i++ {
		if m%2 == 1 {
			y.mulAs(dbl)
		}
		m >>= 1
		dbl.mulAs(dbl)
	}
	return y
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
