package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

type store struct {
	price, stock int
}

func main() {
	N := nextInt()
	M := nextInt()
	ss := make([]store, N)
	for i := 0; i < N; i++ {
		ss[i] = store{price: nextInt(), stock: nextInt()}
	}

	sort.Slice(ss, func(i, j int) bool { return ss[i].price < ss[j].price })

	var money int
	for _, s := range ss {
		if M >= s.stock {
			money += s.stock * s.price
			M -= s.stock
		} else {
			money += M * s.price
			M -= M
		}

		if M == 0 {
			break
		}
	}

	fmt.Println(money)
}

// Input. ----------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func nextFloat() float64 {
	sc.Scan()
	f64, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}

	return f64
}

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
