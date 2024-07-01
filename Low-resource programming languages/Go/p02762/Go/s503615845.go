package main

// Union Find
import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

/*
d[]に格納されているデータ
ルートの場合はその木のサイズが入っている.
ただし負数で.-1,-2,-3,...
これはテクニックである.
初期値-1で始まり,uniteの際に += -n をすることで,
正負を逆にすればサイズがわかる.
また負の値が入っているIDXはルートだとわかる.
*/

// ルートのIdxを返す
func find(n int, d []int) int {
	if d[n] < 0 {
		// ルート
		return n
	}
	rootIdx := find(d[n], d)
	d[n] = rootIdx // 更新.木の高さを短くしている.
	return rootIdx
}
func unite(x, y int, d []int) bool {
	rootX := find(x, d)
	rootY := find(y, d)
	if rootX == rootY {
		// 必要なし
		return false
	}
	if d[rootX] > d[rootY] {
		d[rootX] += d[rootY]
		d[rootY] = rootX
	} else {
		d[rootY] += d[rootX]
		d[rootX] = rootY
	}
	return true
}
func same(x, y int, d []int) bool {
	return find(x, d) == find(y, d)
}
func size(x int, d []int) int {
	root := find(x, d)
	return -1 * d[root]
}

func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	m := eGetInt(scanner)
	k := eGetInt(scanner)
	d := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		d[i] = -1
	}
	friends := make([][]int, n+1)
	for i := 0; i < m; i++ {
		a := eGetInt(scanner)
		b := eGetInt(scanner)
		friends[a] = append(friends[a], b)
		friends[b] = append(friends[b], a)
	}
	for i := 1; i < n+1; i++ {
		for _, f := range friends[i] {
			unite(i, f, d)
		}
	}
	block := make([][]int, n+1)
	for i := 0; i < k; i++ {
		a := eGetInt(scanner)
		b := eGetInt(scanner)
		block[a] = append(block[a], b)
		block[b] = append(block[b], a)
	}
	answer := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		bsum := 0
		for _, b := range block[i] {
			if same(i, b, d) {
				bsum++
			}
		}
		// fmt.Println(size(i, d), len(friends[i]), bsum)
		answer[i] = size(i, d) - 1 - len(friends[i]) - bsum
	}
	// fmt.Println(d)
	fmt.Println(ToString(answer[1:]))
}

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
const (
	TooLarge = math.MaxInt64
	TooSmall = math.MinInt64
)

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
func pow(a, n int) int {
	if n == 0 {
		return 1
	}
	if n == 1 {
		return a
	}
	if n%2 == 1 {
		return pow((a*a), n/2) * a
	}
	return pow((a * a), n/2)
}
func powMod(a, n, mod int) int {
	if n == 0 {
		return 1 % mod
	}
	if n == 1 {
		return a % mod
	}
	if n%2 == 1 {
		return powMod((a*a)%mod, n/2, mod) * a % mod
	}
	return powMod((a*a)%mod, n/2, mod)
}

func factoricalMod(n, count, mod int) int {
	if count == 1 {
		return n % mod
	}
	return (n % mod) * (factoricalMod(n-1, count-1, mod)) % mod
}

func combinationMod(n, a, mod int) int {
	x := factoricalMod(n, a, mod)
	y := factoricalMod(a, a, mod)
	y = powMod(y, mod-2, mod)
	return ((x % mod) * (y % mod)) % mod
}
func countBitOfOn(i, numbits int) int {
	count := 0
	var bit uint64
	for bit = 0; bit < uint64(numbits); bit++ {
		t := 1 << bit
		if i&t > 0 {
			count++
		}
	}
	return count
}

type ints []int

func ToString(slice []int) string {
	format := fmt.Sprint(slice)
	return fmt.Sprint(format[1 : len(format)-1])
}
