package main

import (
	"bufio"
	"fmt"
	"math/big"
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
		cnt = 2
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
	m := map[string]int{}
	r := map[string]int{}
	rr := map[string]string{}
	var a0, b0, no int
	for i := 0; i < n; i++ {
		a := getNextInt64(scanner)
		b := getNextInt64(scanner)
		if a == 0 && b == 0 {
			no++
			continue
		}
		if a == 0 {
			a0++
			continue
		}
		if b == 0 {
			b0++
			continue
		}
		k := big.NewRat(a, b).RatString()
		m[k] = m[k] + 1
		kk := big.NewRat(-b, a).RatString()
		r[kk] = r[kk] + 1
		rr[k] = kk
	}
	pp := make([][2]int, 0)
	pp = append(pp, [2]int{
		a0,
		b0,
	})
	beki := 0
	used := map[string]bool{}
	for k, c := range m {
		if r[k] == 0 {
			beki += c
			continue
		}
		if used[k] {
			continue
		}
		pp = append(pp, [2]int{
			c,
			r[k],
		})
		used[rr[k]] = true
	}
	var ans mint
	ans = 1
	for i := 0; i < beki; i++ {
		ans.mulAs(2)
	}
	for _, p := range pp {
		ans.mulAs(only(p[0], p[1]))
	}
	fmt.Fprintln(writer, ans.sub(1).add(mint(no)))

}

func only(a, b int) mint {
	var aa, bb mint
	aa = 1
	bb = 1
	for i := 0; i < a; i++ {
		aa.mulAs(2)
	}
	for i := 0; i < b; i++ {
		bb.mulAs(2)
	}
	return aa.sub(1).add(bb.sub(1)).add(1)

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
