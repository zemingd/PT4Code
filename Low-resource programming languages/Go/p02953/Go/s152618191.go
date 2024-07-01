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

	n := io.Int()

	hh := make([]int, n)

	for i := 0; i < n; i++ {
		hh[i] = io.Int()
	}

	ok := calc(n, hh)

	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func calc(n int, hh []int) bool {
	ok := true

	before := hh[n-1]
	for i := n - 2; i >= 0; i-- {
		//Log("before", before)
		if before >= hh[i] {
			before = hh[i]
			continue
		} else if before == hh[i]-1 {
			before = hh[i] - 1
			continue
		}

		ok = false
		break
	}
	return ok
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
	result := make([][]int, CombinationCount(len(nums), k))
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

func CombinationCount(n, m int) int {
	return Fact(n) / (Fact(n-m) * Fact(m))
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
