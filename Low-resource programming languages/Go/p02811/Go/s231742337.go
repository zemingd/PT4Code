package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"unsafe"
)

const (
	initialBufSize = 64 * 1024
	maxBufSize     = 10000000
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	// writer  = bufio.NewWriter(os.Stdout)
)

func main() {
	// scanner.Buffer(make([]byte, maxBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	k, x := scanInt(), scanInt()

	if (k * 500) >= x {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func reverse(s string) string {
	b := *(*[]byte)(unsafe.Pointer(&s))
	return string(reverseByte(b))
}

func reverseByte(b []byte) []byte {
	for i, j := 0, (len(b) - 1); i < j; i, j = i+1, j-1 {
		b[i], b[j] = b[j], b[i]
	}
	return b
}
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"unsafe"
)

const (
	initialBufSize = 64 * 1024
	maxBufSize     = 10000000
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	// writer  = bufio.NewWriter(os.Stdout)
)

func main() {
	// scanner.Buffer(make([]byte, maxBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	k, x := scanInt(), scanInt()

	if (k * 500) >= x {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func reverse(s string) string {
	b := *(*[]byte)(unsafe.Pointer(&s))
	return string(reverseByte(b))
}

func reverseByte(b []byte) []byte {
	for i, j := 0, (len(b) - 1); i < j; i, j = i+1, j-1 {
		b[i], b[j] = b[j], b[i]
	}
	return b
}
