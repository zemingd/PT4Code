package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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

type Card struct{ Number, Stock int }
type Cards []Card

func (c Cards) Len() int           { return len(c) }
func (c Cards) Swap(i, j int)      { c[i], c[j] = c[j], c[i] }
func (c Cards) Less(i, j int) bool { return c[i].Number > c[j].Number }

func main() {
	sc.Split(bufio.ScanWords)

	N, M := nextInt(), nextInt()
	sum := 0
	var A, D = make([]int, N), make([]Card, M)
	for i := 0; i < N; i++ {
		a := nextInt()
		A[i] = a
		sum += a
	}
	for i := 0; i < M; i++ {
		b, c := nextInt(), nextInt()
		D[i] = Card{c, b}
	}

	sort.Ints(A)
	sort.Sort(Cards(D))

	pos := 0
lp:
	for _, card := range D {
		for i := 0; i < card.Stock; i++ {
			if pos >= len(A) || card.Number < A[pos] {
				break lp
			}
			sum += card.Number - A[pos]
			pos++
		}
	}

	fmt.Println(sum)
}
