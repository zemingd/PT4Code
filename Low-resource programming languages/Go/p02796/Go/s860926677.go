package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

// IO struct
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

func sumSlice(nums []int) int {
	sum := 0
	for _, n := range nums {
		sum += n
	}
	return sum
}

func inverseMap(m map[int]int) map[int]int {
	inversedMap := map[int]int{}
	for key, value := range m {
		inversedMap[value] = key
	}
	return inversedMap
}

func getOrderdByValue(m map[int]int) []int {
	values := []int{}
	for _, value := range m {
		values = append(values, value)
	}
	sort.Ints(values)

	inversed := inverseMap(m)
	orderd := []int{}
	for _, value := range values {
		key := inversed[value]
		orderd = append(orderd, key)
	}
	return orderd
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

var io = newIO()

func main() {
	io.scanner.Split(bufio.ScanWords)          // switch to separating by space
	io.scanner.Buffer([]byte{}, math.MaxInt64) // switch to read large size input
	defer io.writer.Flush()

	N := io.nextInt()
	robots := make(map[int]int)

	for i := 0; i < N; i++ {
		x := io.nextInt()
		arm := io.nextInt()
		robots[x] = x + arm
	}

	order := getOrderdByValue(robots)
	count := 0
	lastR := int(-1e9)
	for _, x := range order {
		r := robots[x]
		l := x - (r - x)
		if l < lastR {
			count++
		} else {
			lastR = r
		}
	}
	io.printLn(N - count)
}
