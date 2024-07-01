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
	H := getInt()
	W := getInt()
	M := make([][]int, H)
	for i := 0; i < H; i++ {
		M[i] = make([]int, W)
	}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			M[i][j] = getInt()
		}
	}

	//for i := 0; i < H; i++ {
	//	fmt.Println(M[i])
	//}

	var result [][]int

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if M[i][j] != 0 {
				continue
			}

			oddCnt := 0
			if i-1 >= 0 && M[i-1][j]%2 == 1 {
				oddCnt++
			}
			if j-1 >= 0 && M[i][j-1]%2 == 1 {
				oddCnt++
			}
			if i+1 < H && M[i+1][j]%2 == 1 {
				oddCnt++
			}
			if j+1 < W && M[i][j+1]%2 == 1 {
				oddCnt++
			}

			if oddCnt >= 2 {
				if i-1 >= 0 && M[i-1][j]%2 == 1 {
					M[i][j]++
					M[i-1][j]--
					result = append(result, []int{i-1, j, i, j})
				}
				if j-1 >= 0 && M[i][j-1]%2 == 1 {
					M[i][j]++
					M[i][j-1]--
					result = append(result, []int{i, j-1, i, j})
				}
				if i+1 < H && M[i+1][j]%2 == 1 {
					M[i][j]++
					M[i+1][j]--
					result = append(result, []int{i+1, j, i, j})
				}
				if j+1 < W && M[i][j+1]%2 == 1 {
					M[i][j]++
					M[i][j+1]--
					result = append(result, []int{i, j+1, i, j})
				}
			}
		}
	}

	//for i := 0; i < H; i++ {
	//	fmt.Println(M[i])
	//}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if M[i][j] % 2 == 0 || M[i][j] < 2 {
				continue
			}

			fmt.Println(j, i, M[i][j])

			if i-1 >= 0 && (M[i-1][j] == 0 || M[i-1][j]%2 == 1) {
				M[i][j]--
				M[i-1][j]++
				result = append(result, []int{i, j, i-1, j})
			}
			if j-1 >= 0 && (M[i][j-1] == 0 || M[i][j-1]%2 == 1) {
				M[i][j]--
				M[i][j-1]++
				result = append(result, []int{i, j, i, j-1})
			}
			if i+1 < H && (M[i+1][j] == 0 || M[i+1][j]%2 == 1) {
				M[i][j]--
				M[i+1][j]++
				result = append(result, []int{i, j, i+1, j})
			}
			if j+1 < W && (M[i][j+1] == 0 || M[i][j+1]%2 == 1) {
				M[i][j]--
				M[i][j+1]++
				result = append(result, []int{i, j, i, j+1})
			}
		}
	}

	//for i := 0; i < H; i++ {
	//	fmt.Println(M[i])
	//}

	fmt.Println(len(result))
	for i := 0; i < len(result); i++ {
		fmt.Println(result[i][0]+1, result[i][1]+1, result[i][2]+1, result[i][3]+1)
	}
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
	} else if n%2 == 0 {
		return false
	}

	sqrtN := int(math.Sqrt(float64(n)))
	for i := 3; i <= sqrtN; i += 2 {
		if n%i == 0 {
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
		return calcGcd(y, x%y)
	} else {
		return calcGcd(x, y%x)
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
		if n%i == 0 {
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
	factKR := powMod(factK, mod-2)
	factNKR := powMod(factNK, mod-2)
	return calcMod(factN * calcMod(factKR*factNKR))
}
