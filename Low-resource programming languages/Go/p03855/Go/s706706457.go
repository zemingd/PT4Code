package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	k := getNextInt(scanner)
	l := getNextInt(scanner)

	road := make([]int, n)
	train := make([]int, n)

	for i := 0; i < n; i++ {
		road[i] = i
		train[i] = i
	}

	for i := 0; i < k; i++ {
		p := getNextInt(scanner) - 1
		q := getNextInt(scanner) - 1
		r1 := root(p, road)
		r2 := root(q, road)

		if r1 < r2 {
			road[r2] = r1
			continue
		}
		road[r1] = r2
	}
	for i := 0; i < l; i++ {
		r := getNextInt(scanner) - 1
		s := getNextInt(scanner) - 1
		r1 := root(r, train)
		r2 := root(s, train)

		if r1 < r2 {
			train[r2] = r1
			continue
		}
		train[r1] = r2
	}

	imm := IntMapMap{}
	for i := 0; i < n; i++ {
		imm.increment(road[i], train[i])
	}
	for i := 0; i < n; i++ {
		fmt.Fprint(writer, imm.get(road[i], train[i]))
		if i == n-1 {
			fmt.Fprintln(writer, "")
			continue
		}
		fmt.Fprint(writer, " ")
	}

	writer.Flush()
}

func root(i int, nodes []int) int {
	if i == nodes[i] {
		return i
	}

	p := root(nodes[i], nodes)

	nodes[i] = p

	return p
}

// IntMap ...
type IntMap map[int]int

func (m IntMap) get(key int) int {
	if _, ok := m[key]; ok {
		return m[key]
	}
	return 0
}

func (m IntMap) set(key, n int) {
	if _, ok := m[key]; ok == false {
		m[key] = 0
	}
	m[key] = n
}

func (m IntMap) increment(key int) {
	if _, ok := m[key]; ok == false {
		m[key] = 0
	}
	m[key]++
}

// IntMapMap ...
type IntMapMap map[int]IntMap

func (m IntMapMap) get(key1, key2 int) int {
	if _, ok := m[key1][key2]; ok {
		return m[key1][key2]
	}
	return 0
}

func (m IntMapMap) set(key1, key2, n int) {
	if _, ok := m[key1]; ok == false {
		m[key1] = make(IntMap, 0)
	}
	m[key1].set(key2, n)
}

func (m IntMapMap) increment(key1, key2 int) {
	if _, ok := m[key1]; ok == false {
		m[key1] = make(IntMap, 0)
	}
	m[key1].increment(key2)
}
