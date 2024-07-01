package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

type ab struct{ a, b int }
type abs []ab

func (a abs) Len() int           { return len(a) }
func (a abs) Less(i, j int) bool { return a[i].a < a[j].a }
func (a abs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

func main() {
	N := nextInt()
	K := nextInt()
	var list []ab
	for i := 0; i < N; i++ {
		a := nextInt()
		b := nextInt()
		list = append(list, ab{a: a, b: b})
	}

	sort.Sort(abs(list))
	var total int
	for _, l := range list {
		total += l.b
		if total >= K {
			fmt.Println(l.a)
			return
		}
	}
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

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
