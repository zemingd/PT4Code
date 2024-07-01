package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 500001), 500000)
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

var hopes [2][2001][2001]int

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	h := getNextInt(scanner)

	blades := make(Blades, n)
	mblade := Blade{}
	mblade.a = 0
	mblade.b = 0
	mblade.i = 0
	for i := 0; i < n; i++ {
		blades[i].a = getNextInt(scanner)
		blades[i].b = getNextInt(scanner)
		blades[i].i = i
		if mblade.a < blades[i].a {
			mblade.a = blades[i].a
			mblade.b = blades[i].b
			mblade.i = i
		}
	}
	sort.Sort(blades)
	sums := make([]int, n)
	si := 0
	for i := 0; i < n; i++ {
		if mblade.i == blades[i].i {
			continue
		}
		if mblade.a > blades[i].b {
			continue
		}
		sums[si+1] += sums[si] + blades[i].b
		si++
	}

	ans := 1 << 30
	sums = sums[0 : si+1]
	th := throw(h-mblade.b, sums)
	if th > si {
		th = si
	}
	a := attack(h-mblade.b-sums[th], mblade) + th
	if ans > a {
		ans = a + 1
	}
	th = throw(h, sums)
	if th > si {
		th = si
	}
	a = attack(h-sums[th], mblade) + th
	if ans > a {
		ans = a
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}

type Blade struct {
	i, a, b int
}

type Blades []Blade

func (a Blades) Len() int           { return len(a) }
func (a Blades) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a Blades) Less(i, j int) bool { return a[i].b > a[j].b }

func throw(h int, sums []int) int {
	if h <= 0 {
		return 0
	}
	l := 0
	r := len(sums)
	for l < r {
		m := (l + r) >> 1
		if sums[m] < h {
			l = m + 1
			continue
		}
		r = m
	}
	return l
}

func attack(h int, mblade Blade) int {
	if h <= 0 {
		return 0
	}

	return (h-1)/mblade.a + 1
}
