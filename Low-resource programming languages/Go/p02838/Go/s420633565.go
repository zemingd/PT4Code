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

func (IO *IO) nextLine() string {
	IO.scanner.Scan()
	return IO.scanner.Text()
}

func (IO *IO) nextInt() int {
	i, e := strconv.Atoi(IO.nextLine())
	if e != nil {
		panic(e)
	}
	return i
}

func (IO *IO) nextInt64() int64 {
	a, _ := strconv.ParseInt(IO.nextLine(), 10, 64)
	return a
}

func (IO *IO) scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		num = IO.nextInt()
		nums = append(nums, num)
	}
	return
}

func (IO *IO) printLn(a ...interface{}) {
	fmt.Fprintln(IO.writer, a...)
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

// <<<<<<< functions for basic calculation

// >>>>>>> functions for typical algorithm

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

// <<<<<<< functions for typical algorithm

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

func newSieveEratos(n int) sieveEratos {
	s := sieveEratos{
		max:   n,
		sieve: make([]int, n+1),
	}
	s.createSieve()
	return s
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

func (s sieveEratos) isPrime(n int) bool {
	if n < 2 {
		return false
	}
	return s.sieve[n] == n
}

func (s sieveEratos) factorize(n int) map[int]int {
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

var io = newIO()

func main() {
	io.scanner.Split(bufio.ScanWords)      // switch to separating by space
	io.scanner.Buffer([]byte{}, 100000007) // switch to read large size input
	defer io.writer.Flush()

	io.printLn(solve())
}

func solve() (ans interface{}) {
	N := io.nextInt()
	nums := io.scanNums(N)

	total := 0
	for i := range make([]int, 60) {
		d := powInt(2, i)
		n0 := 0
		for _, n := range nums {
			v := d & n
			if v == 0 {
				n0++
			}
		}
		sum := n0 * (N - n0)
		for range make([]int, i) {
			sum *= 2
			sum %= mod
		}
		total += sum
		total %= mod
	}
	return total
}
