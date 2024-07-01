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

	maxScore := 0
	update := func(combi SeqA) {
		score := computeScore(abcds, combi)
		if score > maxScore {
			maxScore = score
		}
	}

	eachCombination(update, 1, m, n)

	fmt.Println(maxScore)
}

func eachCombination(callback func(SeqA), min, max, n int) {
	edits := make([]editSeqA, 0, 92378) // 19! / (10! * 9!) = 92378
	for a := max; a >= min; a-- {
		edits = append(edits, editSeqA{0, a})
	}

	cur := make([]int, n)
	for len(edits) > 0 {
		// pop
		edit := edits[len(edits)-1]
		edits = edits[:len(edits)-1]

		// edit
		cur[edit.pos] = edit.value

		// call
		if edit.pos == n-1 {
			callback(cur)
		} else {
			for v := max; v >= edit.value; v-- {
				edits = append(edits, editSeqA{edit.pos + 1, v})
			}
		}
	}
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

type editSeqA struct {
	pos   int
	value int
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
