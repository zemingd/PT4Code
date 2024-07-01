package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type Drink struct {
	Price int
	Stock int
}

type Drinks []Drink

func (d Drinks) Len() int {
	return len(d)
}

func (d Drinks) Less(i, j int) bool {
	return d[i].Price < d[j].Price
}

func (d Drinks) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	n, m := nextInt(), nextInt()
	d := make([]Drink, n)

	for i := 0; i < n; i++ {
		d[i] = Drink{nextInt(), nextInt()}
	}
	sort.Sort(Drinks(d))

	res := 0
	for i := 0; i < n && m > 0; i++ {
		c := min(d[i].Stock, m)
		res += d[i].Price * c
		m -= c
	}

	fmt.Println(res)
}
