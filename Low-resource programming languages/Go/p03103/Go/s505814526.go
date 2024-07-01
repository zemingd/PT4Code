package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

type K struct {
	Price int
	Count int
}

type Ks []K

func (ks Ks) Len() int {
	return len(ks)
}
func (ks Ks) Less(i, j int) bool {
	return ks[i].Price < ks[j].Price
}
func (ks Ks) Swap(i, j int) {
	ks[i], ks[j] = ks[j], ks[i]
}

func main() {
	sc.Split(bufio.ScanWords)
	//	defer out.Flush()   // !!!!coution!!!! you must use Fprint(out, ) not Print()

	N := nextInt()
	M := nextInt()
	ks := make([]K, N)
	for i := 0; i < N; i++ {
		ks[i].Price = nextInt()
		ks[i].Count = nextInt()
	}
	// sort.Slice(ks, func(i, j int) bool {
	// 	return ks[i].Price < ks[j].Price
	// })
	sort.Sort(Ks(ks))

	var res int64 = 0
	rest := M
	for i := 0; i < N; i++ {
		if ks[i].Count < rest {
			res += int64(ks[i].Price) * int64(ks[i].Count)
			rest -= ks[i].Count
		} else {
			res += int64(ks[i].Price) * int64(rest)
			rest -= rest
		}
		if rest == 0 {
			break
		}
	}
	fmt.Printf("%d\n", res)
}
