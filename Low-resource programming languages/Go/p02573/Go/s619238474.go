package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

const (
	mod = int(1e9) + 7
)

// IO struct
// >>>>>>> functions for io
type IO struct {
	scanner *bufio.Scanner
	writer  *bufio.Writer
}

func newIO() *IO {
	return &IO{
		scanner: bufio.NewScanner(os.Stdin),
		writer:  bufio.NewWriter(os.Stdout),
	}
}

func (io *IO) nextLine() string {
	io.scanner.Scan()
	return io.scanner.Text()
}

func (io *IO) nextInt() int {
	i, e := strconv.Atoi(io.nextLine())
	if e != nil {
		panic(e)
	}
	return i
}

func (io *IO) nextInt64() int64 {
	a, _ := strconv.ParseInt(io.nextLine(), 10, 64)
	return a
}

func (io *IO) nextfloat64() float64 {
	a, _ := strconv.ParseFloat(io.nextLine(), 64)
	return a
}

func (io *IO) scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		num = io.nextInt()
		nums = append(nums, num)
	}
	return
}

func (io *IO) printLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// <<<<<<< functions for io

// >>>>>>> functions for basic calculation
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

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

// calc a^b
func powInt(a, b int) int {
	result := 1
	for i := 1; i <= b; i++ {
		result *= a
	}
	return result
}

func sumSlice(nums []int) int {
	sum := 0
	for _, n := range nums {
		sum += n
	}
	return sum
}

func sumSliceFloat64(nums []float64) float64 {
	sum := float64(0)
	for _, n := range nums {
		sum += n
	}
	return sum
}

// <<<<<<< functions for basic calculation

// >>>>>>> functions for typical algorithms

func gcd(a, b int) int {
	for {
		a, b = b, a%b
		if b == 0 {
			break
		}
	}
	return a
}

func binarySearch(target int, list []int) int {
	left := 0
	right := len(list) - 1
	mid := (left + right) / 2

	for {
		if list[mid] < target {
			left = mid + 1
		} else {
			right = mid
		}
		mid = (left + right) / 2
		if left >= right {
			break
		}
	}
	return mid
}

// calculate nPk
func permutation(n, k int) int {
	if k < 0 || n < k {
		panic("invalid k is given")
	}
	if k == 0 {
		return 1
	}
	v := 1
	for i := 0; i < k; i++ {
		v *= (n - i)
		v %= mod
	}
	return v
}

// calculate n!
func factorial(n int) int {
	if n == 0 {
		return 1
	}
	return permutation(n, n-1)
}

// calculate nCk
func combination(n, k int) int {
	if n/2 < k {
		k = n - k
	}
	factor := getInverseElement(factorial(k), mod)
	return permutation(n, k) * factor % mod
}

// <<<<<<< functions for typical algorithms

// >>>>>>> functions for 2D array
type array2D [][]int

func (a array2D) Len() int {
	return len(a)
}

func (a array2D) Less(i, j int) bool {
	// return a[i][0] < a[j][0] // sort by 1st arg
	return a[i][1] < a[j][1] // sort by 2nd arg
}

func (a array2D) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a array2D) sort() {
	sort.Sort(a)
}

// <<<<<<< functions for 2D array

// >>>>>>> functions for prime numbers
type sieveEratos struct {
	max   int
	sieve []int
}

func newSieveEratos(n int) *sieveEratos {
	s := sieveEratos{
		max:   n,
		sieve: make([]int, n+1),
	}
	s.createSieve()
	return &s
}

func (s *sieveEratos) createSieve() {
	s.sieve[1] = 1
	for i := 2; i <= s.max; i++ {
		if s.sieve[i] > 0 {
			continue
		}
		s.sieve[i] = i
		for j := i * 2; j <= s.max; j += i {
			s.sieve[j] = i
		}
	}
}

func (s *sieveEratos) isPrime(n int) bool {
	if n < 2 {
		return false
	}
	return s.sieve[n] == n
}

func (s *sieveEratos) factorize(n int) map[int]int {
	factors := map[int]int{}
	for {
		f := s.sieve[n]
		factors[f]++
		if f == n {
			break
		}
		n = n / f
	}
	return factors
}

// <<<<<<< functions for prime numbers

// >>>>>>> functions for inverse element

// calc a^n mod
func modPow(a, n, mod int) int {
	res := 1
	for {
		if n&1 == 1 {
			res = res * a % mod
		}
		n = n >> 1
		a = a * a % mod
		if n == 0 {
			break
		}
	}
	return res
}

// calc a^-1 mod
func getInverseElement(a, mod int) int {
	return modPow(a, mod-2, mod)
}

// <<<<<<< functions for inverse element

// >>>>>>> functions for Unin Find

type UnionFind struct {
	data []int
}

func newUnion(N int) *UnionFind {
	d := make([]int, N) // if > 0 represents root, else represents size of tree
	for i := range d {
		d[i] = -1 // initialize all nodes root of single node tree
	}
	union := UnionFind{
		data: d,
	}
	return &union
}

func (u *UnionFind) findRoot(x int) int {
	if u.data[x] < 0 {
		return x
	}
	u.data[x] = u.findRoot(u.data[x])
	return u.data[x]
}

func (u *UnionFind) belongingToSameTree(a, b int) bool {
	return u.findRoot(a) == u.findRoot(b)
}

func (u *UnionFind) unite(a, b int) {
	rootA := u.findRoot(a)
	rootB := u.findRoot(b)

	if rootA == rootB {
		return
	}
	if u.data[rootA] > u.data[rootB] { // if tree from rootA is smaller than the other
		rootA, rootB = rootB, rootA // always make tree from rootA larger than the other
	}
	u.data[rootA] += u.data[rootB]
	u.data[rootB] = rootA
}

func (u *UnionFind) largestTree() (int, int) {
	maxKey := -1
	maxSize := 0
	for key, value := range u.data {
		if value < 0 {
			size := -1 * value
			if maxSize < size {
				maxKey = key
				maxSize = size
			}
		}
	}
	return maxKey, maxSize
}

// <<<<<<< functions for Union Find

var io = newIO()

func main() {
	io.scanner.Split(bufio.ScanWords)      // switch to separating by space
	io.scanner.Buffer([]byte{}, 100000007) // switch to read large size input
	defer io.writer.Flush()

	solve()
}

func solve() {
	n := io.nextInt()
	m := io.nextInt()

	u := newUnion(n)
	for i := 0; i < m; i++ {
		a := io.nextInt() - 1
		b := io.nextInt() - 1
		u.unite(a, b)
	}

	_, size := u.largestTree()
	io.printLn(size)
}
