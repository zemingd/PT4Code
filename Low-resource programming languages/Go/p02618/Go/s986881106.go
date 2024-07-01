package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"math/rand"
	"os"
	"strconv"
	"time"

	"github.com/k0kubun/pp"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)
	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	resolve(parseProblem())
}

func parseProblem() scorer {
	d := scanInt(sc)
	v := 26
	cs := make([]int, v)
	for i := 0; i < v; i++ {
		cs[i] = scanInt(sc)
	}
	ss := make([][]int, d)
	for i := range loop0(d) {
		ss[i] = make([]int, v)
		for j := range loop0(v) {
			ss[i][j] = scanInt(sc)
		}
	}
	return scorer{
		d: d, v: v,
		cs: cs, ss: ss,
	}
}

func loop0(n int) chan int {
	return loop(0, n-1, 1)
}

func loop1(n int) chan int {
	return loop(1, n, 1)
}

func loop(s, e, d int) chan int {
	ch := make(chan int)
	go func() {
		for i := s; i <= e; i += d {
			ch <- i
		}
		close(ch)
	}()
	return ch
}

type scorer struct {
	// 0-indexed
	d, v int
	cs   []int
	ss   [][]int // [<d][<v]
}

func (scr scorer) localSearch(num int) []int {
	rand.Seed(time.Now().UnixNano())
	cur := scr.greedyGen()
	cScore := scr.calcScores(cur)[scr.d-1]
	for i := 0; i < num; i++ {
		d := rand.Intn(scr.d)
		v := rand.Intn(scr.v-1) + 1
		if cur[d] == v {
			continue
		}
		next, nScore := scr.updateScore(cur, cScore, d, v)
		if nScore > cScore {
			cur = next
			cScore = nScore
		}
		pp.Println(cur)
		pp.Println(cScore)
	}
	return cur
}

func (scr scorer) greedyGen() []int {
	result := make([]int, scr.d)
	lasts := make([]int, scr.v)
	for i := range loop0(scr.d) {
		max, maxT := math.MinInt32, 0
		for j := range loop0(scr.v) {
			v := scr.score(i, j, lasts)
			if max < v {
				max = v
				maxT = j
			}
		}
		lasts[maxT] = i + 1
		result[i] = maxT + 1
	}
	return result
}
func (scr scorer) score(d, v int, lasts []int) int {
	s := 0
	for i := range lasts {
		s -= (d + 1 - lasts[i]) * scr.cs[i]
	}
	s += (d + 1 - lasts[v]) * scr.cs[v]
	s += scr.ss[d][v]
	return s
}

func (scr scorer) updateScore(cur []int, curScore, d, v int) (next []int, score int) {
	next = make([]int, len(cur))
	copy(next, cur)
	next[d] = v
	curScore -= scr.ss[d][cur[d]-1]
	curScore += scr.ss[d][v-1]

	nextCurV := len(cur)
	for i := d + 1; i < len(cur); i++ {
		if cur[i] == cur[d] {
			nextCurV = i
			break
		}
	}
	preCurV := -1
	for i := d - 1; i >= 0; i-- {
		if cur[i] == cur[d] {
			preCurV = i
			break
		}
	}
	curScore -= (nextCurV - d) * (d - preCurV) * scr.cs[cur[d]-1]

	nextNextV := len(cur)
	for i := d + 1; i < len(cur); i++ {
		if cur[i] == v {
			nextNextV = i
			break
		}
	}
	preNextV := -1
	for i := d - 1; i >= 0; i-- {
		if cur[i] == v {
			preCurV = i
			break
		}
	}
	curScore += (nextNextV - d) * (d - preNextV) * scr.cs[v-1]
	return next, curScore
}

func (scr scorer) calcScores(input []int) []int {
	satisfaction := 0
	lasts := make([]int, scr.v)
	results := make([]int, scr.d)
	for day, tipe := range input {
		tipe = tipe - 1 // 0-indexize
		satisfaction += scr.ss[day][tipe]
		lasts[tipe] = day + 1
		for cType := range loop0(scr.v) {
			satisfaction -= scr.cs[cType] * (day + 1 - lasts[cType])
		}
		results[day] = satisfaction
	}
	return results
}

func (scr scorer) receiveInput(sc *bufio.Scanner) []int {
	return scr.calcScores(nextIntSlice(sc, scr.d))
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	return int(a)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextIntSlice(sc *bufio.Scanner, n int) (a []int) {

	a = make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	return a
}

func resolve(scr scorer) {
	for _, v := range scr.localSearch(50) {
		fmt.Println(v)
	}
	return
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
