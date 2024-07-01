package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"unsafe"
)

type unionFind struct {
	Parent []int
}

func (uf *unionFind) newUnionFind(N int) *unionFind {
	u := &unionFind{Parent: make([]int, N)}
	for i := 0; i < N; i++ {
		u.Parent[i] = i
	}
	return u
}

func (uf *unionFind) Root(X int) int {
	if X == uf.Parent[X] {
		return X
	}
	// 経路圧縮, 親-子1-子2-子3 という構造を
	//     親
	//   / |  \
	// 子1 子2 子3 という構造に変える
	uf.Parent[X] = uf.Root(uf.Parent[X])
	return uf.Parent[X]
}

func (uf *unionFind) Same(a int, b int) bool {
	if uf.Root(a) == uf.Root(b) {
		return true
	}
	return false
}

func (uf *unionFind) Unite(a int, b int) {
	if uf.Same(a, b) {
		return
	}
	// aのRoot(根)であるuf.Root(a)の親としてuf.Root(b)を設定する
	// aはRootなので親がなかったが、新しく追加する
	uf.Parent[uf.Root(a)] = uf.Root(b)
}

func main() {
	NMK := sc.nextInts()
	N := NMK[0]
	M := NMK[1]
	K := NMK[2]

	var uf *unionFind
	uf = uf.newUnionFind(N)

	friends := make(map[int]int)
	for i := 0; i < M; i++ {
		AB := sc.nextInts()
		A := AB[0] - 1
		B := AB[1] - 1

		uf.Unite(A, B)
		friends[A]++
		friends[B]++
	}

	blocked := make(map[int]int)
	for i := 0; i < K; i++ {
		CD := sc.nextInts()
		C := CD[0] - 1
		D := CD[1] - 1

		if uf.Same(C, D) {
			blocked[C]++
			blocked[D]++
		}
	}

	arr := make(map[int]int)
	for i := 0; i < N; i++ {
		rIndex := uf.Root(uf.Parent[i])
		arr[rIndex]++
	}

	for i := 0; i < N; i++ {
		ans := arr[uf.Root(uf.Parent[i])] - friends[i] - blocked[i] - 1
		fmt.Print(ans, " ")
	}
	fmt.Println()
}

/* template functions */
var (
	sc scanner
)

func init() {
	sc = scanner{
		buf: make([]string, 0, 0),
		cur: 0,
		r:   bufio.NewReader(os.Stdin),
	}
}

type scanner struct {
	buf []string
	cur int
	r   *bufio.Reader
}

func (s *scanner) readln() {
	rbuf := make([]byte, 0, 0)
	for {
		line, prefix, err := s.r.ReadLine()
		if err != nil {
			panic(err)
		}
		rbuf = append(rbuf, line...)
		if prefix == false {
			break
		}
	}
	s.cur = 0
	s.buf = strings.Split(*(*string)(unsafe.Pointer(&rbuf)), " ")
}
func (s *scanner) isFull() bool {
	if s.cur == len(s.buf) {
		return true
	}
	return false
}
func (s *scanner) resetCur() {
	s.cur = 0
}
func (s *scanner) next() string {
	if s.cur == 0 {
		s.readln()
	}
	res := s.buf[s.cur]
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}
func (s *scanner) nexts() []string {
	s.readln()
	s.resetCur()
	return s.buf
}
func (s *scanner) nextInt() int {
	if s.cur == 0 {
		s.readln()
	}
	res, _ := strconv.Atoi(s.buf[s.cur])
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}
func (s *scanner) nextInts() []int {
	s.readln()
	res := make([]int, len(s.buf))
	for i := range s.buf {
		res[i], _ = strconv.Atoi(s.buf[i])
	}
	s.resetCur()
	return res
}
func (s *scanner) nextFloat() float64 {
	if s.cur == 0 {
		s.readln()
	}
	res, _ := strconv.ParseFloat(s.buf[s.cur],
		64)
	s.cur++
	if s.isFull() {
		s.resetCur()
	}
	return res
}
func (s *scanner) nextFloats() []float64 {
	s.readln()
	res := make([]float64, len(s.buf))
	for i := range s.buf {
		res[i], _ = strconv.ParseFloat(s.buf[i],
			64)
	}
	s.resetCur()
	return res
}
func digits(x int) int {
	return len(strconv.Itoa(x))
}
func powInt(x, p int) (result int) {
	result = 1
	for i := 0; i < p; i++ {
		result *= x
	}
	return
}
func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}
func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}
func abs(x int) int {
	return int(math.Abs(float64(x)))
}
func varDump(value ...interface{}) {
	for _, v := range value {
		fmt.Fprintf(os.Stderr, "%#v\n", v)
	}
}
func yes() {
	fmt.Println("Yes")
}
func no() {
	fmt.Println("No")
}
