package main

import (
	"bufio"
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
	A := getInt()
	B := getInt()

	divisorsA := getDivisor(A)
	divisorsB := getDivisor(B)

	//fmt.Println(divisorsA)
	//fmt.Println(divisorsB)

	var commonDivisors []int
	for _, da := range divisorsA {
		for _, db := range divisorsB {
			if da == db {
				commonDivisors = append(commonDivisors, da)
			}
		}
	}

	//fmt.Println(commonDivisors)

	result := 0
	patterns := powerset2(commonDivisors)
	for _, pattern := range patterns {
		flag := true

		for _, n1 := range pattern {
			for _, n2 := range pattern {
				if n1 != n2 && n2 % n1 == 0 {
					flag = false
					break
				}
			}

			if !flag {
				break
			}
		}

		if flag {
			if result < len(pattern) {
				result = len(pattern)
			}
		}
	}

	fmt.Println(result)
}

func getDivisor(n int) []int {
	var divisor []int
	divisor = append(divisor, 1)

	sqrt := int(math.Sqrt(float64(n)))
	for i := 2; i <= sqrt; i++ {
		if n % i == 0 {
			divisor = append(divisor, i)
			divisor = append(divisor, n/i)
		}
	}
	return divisor
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
