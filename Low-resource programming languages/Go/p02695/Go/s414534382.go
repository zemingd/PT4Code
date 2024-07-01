package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	m := sc.ReadInt()
	q := sc.ReadInt()
	abcds := make([]ABCD, q)
	for i := 0; i < q; i++ {
		a := sc.ReadInt()
		b := sc.ReadInt()
		c := sc.ReadInt()
		d := sc.ReadInt()
		abcds[i] = ABCD{a, b, c, d}
	}

	combinations := generateCombinations(1, m, n, 0)

	maxScore := 0
	for _, combi := range combinations {
		score := computeScore(abcds, combi)
		if score > maxScore {
			maxScore = score
		}
	}

	fmt.Println(maxScore)
}

func generateCombinations(min, max, n, nCur int) []SeqA {
	if nCur == n {
		return []SeqA{make(SeqA, n)}
	}

	combinations := make([]SeqA, 0)
	for i := min; i <= max; i++ {
		combinationsForI := generateCombinations(i, max, n, nCur+1)
		for _, combi := range combinationsForI {
			combi[nCur] = i
		}
		combinations = append(combinations, combinationsForI...)
	}
	return combinations
}

func computeScore(abcds []ABCD, seqA SeqA) int {
	totalD := 0
	for _, abcd := range abcds {
		if seqA[abcd.B-1]-seqA[abcd.A-1] == abcd.C {
			totalD += abcd.D
		}
	}
	return totalD
}

type SeqA []int

type ABCD struct {
	A int
	B int
	C int
	D int
}

// util
// *   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base int, exponent uint) int {
	answer := 1
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

// *   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}
