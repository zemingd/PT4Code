package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
	mod            = 1e9 + 7
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func main() {
	N := getInt()
	X := make([]int, N)
	Y := make([]int, N)
	H := make([]int, N)
	for i := 0; i < N; i++ {
		X[i] = getInt()
		Y[i] = getInt()
		H[i] = getInt()
	}

	M := make([][]int, 101)
	for i := 0; i <= 100; i++ {
		M[i] = make([]int, 101)
	}

	sameH := make(map[int][][]int)

	for i := 0; i < N; i++ {
		M[Y[i]][X[i]] = H[i]
		sameH[H[i]] = append(sameH[H[i]], []int{X[i], Y[i]})
	}

	for h, posList := range sameH {
		if len(posList) == 1 {
			continue
		}

		for p1 := 0; p1 < len(posList)-1; p1++ {
			for p2 := p1+1; p2 < len(posList); p2++ {
				pos1 := posList[p1]
				pos2 := posList[p2]

				if pos1[0] == pos2[0] {
					// X座標が同じ
					x := pos1[0]
					minY := min(pos1[1], pos2[1])
					maxY := max(pos1[1], pos2[1])
					halfLen := (maxY - minY) / 2
					for i := 0; i < halfLen; i++ {
						M[minY + i+1][x] = M[minY + i][x]+1
						M[maxY - (i+1)][x] = M[maxY - i][x]+1
					}
				} else if pos1[1] == pos2[1] {
					// Y座標が同じ
					y := pos1[1]
					minX := min(pos1[0], pos2[0])
					maxX := max(pos1[0], pos2[0])
					halfLen := (maxX - minX) / 2
					for i := 0; i < halfLen; i++ {
						M[y][minX + i+1] = M[y][minX + i]+1
						M[y][maxX - (i+1)] = M[y][maxX - i]+1
					}
				} else if abs(pos1[0] - pos2[0]) == 1 && abs(pos1[1] - pos2[1]) == 1 {
					// ななめ
					if M[pos1[1]][pos2[0]] != 0 {
						if M[pos1[1]][pos2[0]] < h {
							M[pos2[1]][pos1[0]] = h+1
						} else {
							M[pos2[1]][pos1[0]] = h-1
						}
					} else if M[pos2[1]][pos1[0]] != 0 {
						if M[pos2[1]][pos1[0]] < h {
							M[pos1[1]][pos2[0]] = h+1
						} else {
							M[pos1[1]][pos2[0]] = h-1
						}
					}
				}
			}
		}
	}

	//for i := 0; i <= 100; i++ {
	//	fmt.Println(M[i])
	//}

	maxH := 0
	maxIndex := []int{0, 0}
	for y := 0; y <= 100; y++ {
		for x := 0; x <= 100; x++ {
			if maxH < M[y][x] {
				maxH = M[y][x]
				maxIndex = []int{x, y}
			}
		}
	}

	fmt.Println(maxIndex[0], maxIndex[1], maxH)
}

func getRange(hMap map[int][]int) []int {
	r := []int{0, 100}
	for i := 0; i <= 100; i++ {
		ch, exists := hMap[i]
		if !exists {
			continue
		}

		mh, exists := hMap[r[0]]
		if exists {
			if max(mh...) < max(ch...) {
				r[0] = i
			}
		} else {
			r[0] = i
		}

		mh, exists = hMap[r[1]]
		if exists {
			if max(ch...) < max(mh...) {
				break
			} else {
				r[1] = i
			}
		} else {
			r[1] = i
		}
	}
	return r
}

type Graph struct {
	n     int
	edges [][]int
}

func NewGraph(n int) *Graph {
	g := &Graph{
		n:     n,
		edges: make([][]int, n),
	}
	return g
}

func (g *Graph) AddEdge(u, v int) {
	g.edges[v] = append(g.edges[v], u)
	g.edges[u] = append(g.edges[u], v)
}

func dfs(c int, edges [][]int, visited map[int]struct{}) {
	visited[c] = struct{}{}

	for _, v := range edges[c] {
		_, flag := visited[v]
		if flag {
			continue
		}
		dfs(v, edges, visited)
	}
}

func bfs(c int, graph *Graph) {
	next := make([]int, 0)
	next = append(next, c)
	visited := make(map[int]struct{})

	for ; len(next) != 0; {
		u := next[0]
		next = next[1:]
		visited[u] = struct{}{}

		for _, v := range graph.edges[u] {
			_, flag := visited[v]
			if flag {
				continue
			}

			// なにか処理

			next = append(next, v)
		}
	}
}

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getIntArray(n int) []int {
	array := make([]int, n)
	for i := 0; i < n; i++ {
		array[i] = getInt()
	}
	return array
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func powMod(n, p int) int {
	if p == 0 {
		return 1
	} else if p%2 == 0 {
		t := powMod(n, p/2)
		return calcMod(t * t)
	} else {
		return calcMod(n * powMod(n, p-1))
	}
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func printIntArray(array []int) {
	strArray := fmt.Sprint(array)
	fmt.Println(strArray[1 : len(strArray)-1])
}

func calcMod(x int) int {
	return x % mod
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func isPrime(n int) bool {
	if n < 2 {
		return false
	} else if n == 2 {
		return true
	} else if n % 2 == 0 {
		return false
	}

	sqrtN := int(math.Sqrt(float64(n)))
	for i := 3; i <= sqrtN; i += 2 {
		if n % i == 0 {
			return false
		}
	}

	return true
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func makeRange(min, max int) []int {
	a := make([]int, max-min+1)
	for i := range a {
		a[i] = min + i
	}
	return a
}

func powerset2(nums []int) [][]int {
	length := int(math.Pow(2, float64(len(nums))))
	result := make([][]int, length)

	index := 0
	result[index] = []int{}
	index++

	for _, n := range nums {
		max := index
		for i := 0; i < max; i++ {
			result[index] = copyAndAppend(result[i], n)
			index++
		}
	}

	return result
}

func copyAndAppend(nums []int, n int) []int {
	dst := make([]int, len(nums)+1)
	copy(dst, nums)
	dst[len(nums)] = n
	return dst
}

func calcGcd(x, y int) int {
	if y == 0 {
		return x
	} else if x >= y {
		return calcGcd(y, x % y)
	} else {
		return calcGcd(x, y % x)
	}
}

func getDivisor(n int) []int {
	var divisor []int
	divisor = append(divisor, 1)
	if n != 1 {
		divisor = append(divisor, n)
	}

	sqrt := int(math.Sqrt(float64(n)))
	for i := 2; i <= sqrt; i++ {
		if n % i == 0 {
			divisor = append(divisor, i)
			divisor = append(divisor, n/i)
		}
	}
	return divisor
}

type intHeap []int

func (h intHeap) Len() int {
	return len(h)
}

func (h intHeap) Less(i, j int) bool {
	return h[i] > h[j]
}

func (h intHeap) Swap(i, j int) {
	h[i], h[j] = h[j], h[i]
}

func (h *intHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}

func (h *intHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func initHeap() *intHeap {
	ih := &intHeap{}
	heap.Init(ih)
	return ih
}

func (h *intHeap) pushHeap(n int) {
	heap.Push(h, n)
}

func (h *intHeap) popHeap() int {
	return heap.Pop(h).(int)
}

func factMod(n int) int {
	value := 1
	for ; n > 1; n-- {
		value = calcMod(value * n)
	}
	return value
}

func combinationMod(n, k int) int {
	factN := factMod(n)
	factK := factMod(k)
	factNK := factMod(n - k)
	factKR := powMod(factK, mod - 2)
	factNKR := powMod(factNK, mod - 2)
	return calcMod(factN * calcMod(factKR * factNKR))
}
