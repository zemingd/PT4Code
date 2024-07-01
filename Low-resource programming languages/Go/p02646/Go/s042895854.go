package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := NewIo()
	defer io.Flush()

	a, v := io.Int(), io.Int()
	b, w := io.Int(), io.Int()
	t := io.Int()

	ap := a + v*t
	bp := b + w*t
	if ap >= bp && a < b && Abs(a-b)%Abs(v-w) == 0 || ap <= bp && a > b && Abs(a-b)%Abs(v-w) == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

func (io *Io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func (io *Io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *Io) Int() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) Float() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func Log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

func Abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func Pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func SortAsc(a []int) []int {
	sort.Ints(a)
	return a
}

func SortDesc(a []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	return a
}

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

func LCM(a, b int) int {
	if a == 0 && b == 0 {
		return 0
	}
	return a * b / GCD(a, b)
}

func CumSum(nums []int) []int {
	sums := []int{0}

	for i := 0; i < len(nums); i++ {
		sums = append(sums, sums[i]+nums[i])
	}
	return sums
}

func BisectLeft(nums []int, left, right int, target int) int {
	if left == right {
		if nums[left] == target {
			return left
		} else if nums[left] < target {
			return left + 1
		} else {
			return left
		}
	}

	mid := (left + right) / 2
	if nums[mid] == target {
		return mid
	}

	if nums[mid] > target {
		return BisectLeft(nums, left, mid, target)
	} else if nums[mid] < target {
		return BisectLeft(nums, mid+1, right, target)
	}
	return 0
}

func Permutations(nums []int) [][]int {
	n := len(nums)
	if n == 0 {
		return [][]int{}
	}
	ans := [][]int{}

	for _, n := range nums {
		rest := remove(nums, n)
		lists := Permutations(rest)
		if len(lists) == 0 {
			lists = [][]int{nil}
		}

		for i := 0; i < len(lists); i++ {
			lists[i] = append(lists[i], n)
			ans = append(ans, lists[i])
		}
	}
	return ans
}

func remove(nums []int, target int) []int {
	result := []int{}
	for i := 0; i < len(nums); i++ {
		if nums[i] != target {
			result = append(result, nums[i])
		}
	}
	return result
}

func PowerSet(nums []int) [][]int {
	size := Pow(2, len(nums))
	result := make([][]int, size)

	idx := 0
	result[idx] = []int{}
	idx++

	for _, n := range nums {
		max := idx
		for i := 0; i < max; i++ {
			result[idx] = copyAndAppend(result[i], n)
			idx++
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

func Combination(nums []int, k int) [][]int {
	size := len(nums)
	result := make([][]int, CombinationCount(int64(len(nums)), int64(k), 10e9))
	bi := (1 << uint(k)) - 1
	max := 1 << uint(size)
	idx := 0

	for bi < max {
		flags := bi
		s := []int{}
		for _, n := range nums {
			if flags%2 != 0 {
				s = append(s, n)
			}
			flags /= 2
		}
		result[idx] = s
		idx++
		bi = Combination2NextIndex(bi)
	}
	return result
}

func Combination2NextIndex(n int) int {
	smallest := n & -n
	ripple := n + smallest
	newSmallest := ripple & -ripple
	ones := ((newSmallest / smallest) >> 1) - 1
	return ripple | ones
}

// CombinationCount はnCmを計算する関数。メモ化を使って計算量を削減する。
func CombinationCount(n, m, maxInput int64) int64 {
	memo := map[int64]map[int64]int64{}
	for i := int64(1); i <= maxInput*maxInput; i++ {
		memo[int64(i)] = map[int64]int64{}
	}
	return combinationCount(n, m, memo)
}
func combinationCount(n, m int64, memo map[int64]map[int64]int64) int64 {
	if n == m || m == 0 {
		return 1
	}

	left, lOK := memo[n-1][m-1]
	right, rOK := memo[n-1][m]

	if lOK && rOK {
		return left + right
	}

	if lOK {
		right = combinationCount(n-1, m, memo)
		memo[n-1][m] = right
		return left + right
	}

	if rOK {
		left = combinationCount(n-1, m-1, memo)
		memo[n-1][m-1] = left
		return left + right
	}

	left = combinationCount(n-1, m-1, memo)
	right = combinationCount(n-1, m, memo)
	memo[n-1][m-1] = left
	memo[n-1][m] = right
	return left + right
}

func Fact(n int) int {
	if n == 0 {
		return 1
	} else {
		return n * Fact(n-1)
	}
}

func Divisors(n int) []int {
	divisors := map[int]bool{}
	for i := 1; i < int(math.Sqrt(float64(n)))+1; i++ {
		if n%i == 0 {
			divisors[i] = true
			//divisors = append(divisors, i)
			if i != n {
				divisors[n/i] = true
				//divisors = append(divisors, n/i)
			}
		}

	}
	ans := []int{}
	for k := range divisors {
		ans = append(ans, k)
	}
	return ans
}

type UnionFind struct {
	parents []int
}

func NewUnionFind(n int) *UnionFind {
	parents := make([]int, n)
	for i := 0; i < n; i++ {
		parents[i] = i
	}
	return &UnionFind{
		parents: parents,
	}
}

func (u *UnionFind) Root(x int) int {
	if u.parents[x] == x {
		return x
	}
	u.parents[x] = u.Root(u.parents[x])
	return u.parents[x]
}

func (u *UnionFind) Unite(x, y int) {
	rx := u.Root(x)
	ry := u.Root(y)
	if rx == ry {
		return
	}
	if rx < ry {
		u.parents[rx] = ry
	} else {
		u.parents[ry] = rx
	}
}

func (u *UnionFind) Same(x, y int) bool {
	rx := u.Root(x)
	ry := u.Root(y)
	if rx == ry {
		return true
	}
	return false
}

func (u *UnionFind) Size(x int) int {
	root := u.Root(x)
	size := 0
	for _, p := range u.parents {
		if u.Root(p) == root {
			size++
		}
	}
	return size
}

func (u *UnionFind) Groups() map[int][]int {
	groups := map[int][]int{}

	for i, p := range u.parents {
		groups[u.Root(p)] = append(groups[u.Root(p)], i)
	}
	return groups
}
