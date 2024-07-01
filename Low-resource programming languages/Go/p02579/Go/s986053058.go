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

type point struct {
	x, y int
}

func main() {
	scanner := makeWordScanner()
	h := eGetInt(scanner)
	eGetInt(scanner)
	ch := eGetInt(scanner) - 1
	cw := eGetInt(scanner) - 1
	dh := eGetInt(scanner) - 1
	dw := eGetInt(scanner) - 1
	maze := make([][]string, h)
	for i := 0; i < h; i++ {
		maze[i] = eGetChars(scanner)
	}
	fmt.Println(maze, ch, cw, dh, dw)

	start := point{cw, ch}
	goal := point{dw, dh}
	score := make(map[point]int)

	canmove := func(p *point) bool {
		return p.y >= 0 && p.y < len(maze) && p.x >= 0 && p.x < len(maze[0]) && maze[p.y][p.x] == "."
	}

	/*
				この問題は, ワープがあってすべてのマスがつながっているとは限らないので,
				一度訪問したからといって消せない.
		        そこが通常のbfsとは違う.
	*/

	score[start] = 0
	bfs := func() {
		deq := []point{start}
		var p point
		// 0コスト移動の探索
		for len(deq) > 0 {
			// 先頭を出す
			p, deq = deq[0], deq[1:]

			// 0コスト移動の候補
			xadd := []int{0, 1, 0, -1}
			yadd := []int{-1, 0, 1, 0}
			for i := 0; i < 4; i++ {
				x, y := xadd[i], yadd[i]
				next := point{p.x + x, p.y + y}
				if canmove(&next) {
					// 移動可能
					sp := score[p]
					sn, ok := score[next]
					if !ok || ok && sp < sn {
						// pからの0移動が最小
						score[next] = sp
						//前に突っ込む
						deq = append([]point{next}, deq...)
					}
				}
			}
			// 1コスト移動の候補
			// 先頭を出す
			for y := -2; y <= 2; y++ {
				for x := -2; x <= 2; x++ {
					next := point{p.x + x, p.y + y}
					if canmove(&next) {
						// 移動可能
						sp := score[p]
						sn, ok := score[next]
						if !ok || ok && sp+1 < sn {
							// pからのワープ移動が最小
							score[next] = sp + 1
							//後ろに突っ込む
							deq = append(deq, next)
						}
					}
				}
			}
		}
	}
	bfs()
	fmt.Println(score[goal])

	// // 幅優先探索
	// // fmt.Printf("%v\n", visited)
	//
	// bfsZero := func(s point, q []point, cost int) []point {
	// 	// コスト0グループ
	// 	p := s
	// 	zero := []point{p}
	// 	// キューが尽きるまで(到達できるところまで)
	// 	for len(q) > 0 {
	// 		// 先頭を出す
	// 		p, q = q[0], q[1:]
	//
	// 		// 移動の候補
	// 		nexts := []point{}
	// 		cand := []point{
	// 			{p.x + 1, p.y},
	// 			{p.x - 1, p.y},
	// 			{p.x, p.y + 1},
	// 			{p.x, p.y - 1},
	// 		}
	// 		for _, c := range cand {
	// 			if canmove(c) {
	// 				nexts = append(nexts, c)
	// 			}
	// 		}
	// 		for _, next := range nexts {
	// 			if _, ok := visited[next]; !ok {
	// 				// まだ未訪問
	// 				// fmt.Printf("add %d + zero %v ", cost, next)
	// 				visited[next] = cost
	// 				// fmt.Printf("%v\n", visited)
	// 				q = append(q, next)
	// 				// fmt.Printf("c zero %v ", zero)
	// 				zero = append(zero, next)
	// 				// fmt.Printf("r zero %v ", zero)
	// 			}
	// 		}
	// 	}
	// 	return zero
	// }
	//
	// warp := func(zero []point, cost int) []point {
	// 	warped := []point{}
	// 	for _, z := range zero {
	// 		for h := -2; h <= 2; h++ {
	// 			for w := -2; w <= 2; w++ {
	// 				c := point{z.x + w, z.y + h}
	// 				if canmove(c) {
	// 					// fmt.Printf("can move %v %v \n", c, maze[c.y][c.x])
	// 					if _, ok := visited[c]; !ok {
	// 						// まだ未訪問
	// 						// fmt.Printf("add %d + one %v ", cost, c)
	// 						visited[c] = cost + 1
	// 						// fmt.Printf("%v\n", visited)
	// 						warped = append(warped, c)
	// 					}
	// 				}
	// 			}
	// 		}
	// 	}
	// 	return warped
	// }
	// q := []point{start}
	// cost := 0
	// for {
	// 	q = bfsZero(q[0], q, cost)
	// 	// fmt.Printf("after zero %v\n", q)
	// 	q = warp(q, cost)
	// 	if len(q) == 0 {
	// 		break
	// 	}
	// 	cost++
	// }
	// if v, ok := visited[goal]; ok {
	// 	fmt.Println(v)
	// } else {
	// 	fmt.Println("-1")
	// }
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
func pow5(a int, memo map[int]int) int {
	v, ok := memo[a]
	if ok {
		return v
	}

	b := a * a
	c := b * b
	memo[a] = c * 5
	return memo[a]
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

type String string

func reverseS(s []int) {
	for i := 0; i < len(s)/2; i++ {
		s[i], s[len(s)-1-i] = s[len(s)-1-i], s[i]
	}
}
func reverseB(s []byte) {
	for i := 0; i < len(s)/2; i++ {
		s[i], s[len(s)-1-i] = s[len(s)-1-i], s[i]
	}
}

func (s String) revese() string {
	b := []byte(s)
	for i := 0; i < len(b)/2; i++ {
		b[i], b[len(b)-1-i] = b[len(b)-1-i], b[i]
	}
	return string(b)
}
func contains(n int, slice []int) bool {
	for _, e := range slice {
		if e == n {
			return true
		}
	}
	return false
}
func rPool(p int, n []int, c []int, cc [][]int) [][]int {
	if len(n) == 0 || p <= 0 {
		return cc
	}
	p--
	for i := range n {
		r := make([]int, len(c)+1)
		copy(r, c)
		r[len(r)-1] = n[i]
		if p == 0 {
			cc = append(cc, r)
		}
		cc = rPool(p, n[i+1:], r, cc)
	}
	return cc
}

func Pool(p int, n []int) [][]int {
	return rPool(p, n, nil, nil)
}
