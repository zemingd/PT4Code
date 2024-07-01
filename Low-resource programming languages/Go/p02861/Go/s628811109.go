package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

func getDist(p1, p2 int, dist [][]float64) float64 {
	if p2 < p1 {
		p2, p1 = p1, p2
	}
	return dist[p1][p2]
}

func calcDist(perm []int, dist [][]float64) float64 {
	result := 0.0
	for i := 0; i < len(perm)-1; i++ {
		result += getDist(perm[i], perm[i+1], dist)
	}
	return result
}

func main() {
	scanner := makeScanner(8192)
	n := eGetInt(scanner)
	px := make([]int, n)
	py := make([]int, n)
	for i := 0; i < n; i++ {
		ints := eGetInts(scanner)
		px[i], py[i] = ints[0], ints[1]
	}
	/*
		解法 2
		全部の距離を足して割る
	*/
	dist := make([][]float64, n)
	for i := 0; i < n; i++ {
		dist[i] = make([]float64, n)
	}
	sum := 0.0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			sx := px[i] - px[j]
			sy := py[i] - py[j]
			sum += math.Sqrt(float64(sx*sx) + float64(sy*sy))
		}
	}
	fmt.Println(sum / float64(n))
	/*
		解法 1
		順列を作って地道に
	*/
	/*
		dist := make([][]float64, n)
		for i := 0; i < n; i++ {
			dist[i] = make([]float64, n)
		}
		for i := 0; i < n; i++ {
			for j := i + 1; j < n; j++ {
				sx := px[i] - px[j]
				sy := py[i] - py[j]
				dist[i][j] = math.Sqrt(float64(sx*sx) + float64(sy*sy))
			}
		}

		p := make([]int, n)
		for i := 0; i < n; i++ {
			p[i] = i
		}
		perm := permutations(p)

		result := 0.0
		for _, p := range perm {
			result += calcDist(p, dist)
		}
		fmt.Println(result / float64(len(perm)))
	*/
}

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
func makeScanner(maxByte int) *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]uint8, 0, 8192), maxByte)
	return scanner
}
func makeCharScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanRunes)
	return scanner
}
func makeWordScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanWords)
	return scanner
}
func eGetLine(r *bufio.Scanner) string {
	if r.Scan() {
		return r.Text()
	}
	err := r.Err()
	if err != nil {
		log.Fatal(err)
	}
	// EOF
	return ""
}
func eGetInt(r *bufio.Scanner) int {
	line := eGetLine(r)
	return eAtoi(line)
}
func eGetInt64(r *bufio.Scanner) int64 {
	line := eGetLine(r)
	return eAtoInt64(line)
}
func eGetFields(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Fields(line)
}
func eGetInts(r *bufio.Scanner) []int {
	fields := eGetFields(r)
	ints := make([]int, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoi(fields[i])
	}
	return ints
}
func eGetInt64s(r *bufio.Scanner) []int64 {
	fields := eGetFields(r)
	ints := make([]int64, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoInt64(fields[i])
	}
	return ints
}
func eGetChars(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Split(line, "")
}
func eAtoi(s string) int {
	n, err := strconv.Atoi(s)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
func eAtoInt64(s string) int64 {
	n, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
func permutations(arr []int) [][]int {
	var helper func([]int, int)
	res := [][]int{}

	helper = func(arr []int, n int) {
		if n == 1 {
			tmp := make([]int, len(arr))
			copy(tmp, arr)
			res = append(res, tmp)
		} else {
			for i := 0; i < n; i++ {
				helper(arr, n-1)
				if n%2 == 1 {
					arr[i], arr[n-1] = arr[n-1], arr[i]
				} else {
					arr[0], arr[n-1] = arr[n-1], arr[0]
				}
			}
		}
	}
	helper(arr, len(arr))
	return res
}
