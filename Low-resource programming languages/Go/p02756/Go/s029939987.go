package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
	"strconv"
)
// -----------------------------------------------------------------------------

// IO helper functions

// Returns next token from input.  It must be initialized by SetInput()
// before the first call.
var nextToken func() ([]byte, error)
var nextLine func() ([]byte, error)

// Holds a buffer for output.  It must be initialized by SetOutput().
// All IO fucntions (read*() and [e]print*()) should write to OutputWriter
// instead of this.
var OutputBuffer *bufio.Writer

// Holds an io.Writer.  It must be initialized by SetOutput()
var OutputWriter io.Writer

// Set IO functions for interactive input/output.
func SetInteractive(w io.Writer, r io.Reader) {
	SetUnbefferedInput(r)
	OutputBuffer = nil
	OutputWriter = w
}

// Setup OutputBuffer and OutputWriter.
func SetOutput(w io.Writer) {
	OutputBuffer = bufio.NewWriter(w)
	OutputWriter = OutputBuffer
}

// Flushes OutputBuffer
func Flush() {
	if OutputBuffer != nil {
		OutputBuffer.Flush()
	}
}

// Returns true if c is a white space
func IsSpace(c byte) bool {
	switch c {
	case '\t', '\n', '\v', '\f', '\r', ' ':
		return true
	}
	return false
}

func IsNewLine(c byte) bool {
	switch c {
	case '\n', '\r':
		return true
	}
	return false
}

// Setup nextToken with input buffer.
func SetInput(r io.Reader) {
	buf := new(bytes.Buffer)
	var b []byte

	var i int
	rest := func() ([]byte, error) {
		for i < len(b) && IsSpace(b[i]) {
			i++
		}
		if i == len(b) {
			return nil, io.ErrUnexpectedEOF
		}
		j := i
		for i < len(b) && !IsSpace(b[i]) {
			i++
		}
		return b[j:i], nil
	}
	initial := func() ([]byte, error) {
		io.Copy(buf, r)
		b = buf.Bytes()
		nextToken = rest
		return rest()
	}
	nextToken = initial

	restLn := func() ([]byte, error) {
		for i < len(b) && IsNewLine(b[i]) {
			i++
		}
		if i == len(b) {
			return nil, io.ErrUnexpectedEOF
		}
		j := i
		for i < len(b) && !IsNewLine(b[i]) {
			i++
		}
		return b[j:i], nil
	}

	initialLn := func() ([]byte, error) {
		io.Copy(buf, r)
		b = buf.Bytes()
		nextLine = restLn
		return restLn()
	}
	nextLine = initialLn
}

// Setup nextToken without input buffer.
func SetUnbefferedInput(r io.Reader) {
	buf := bufio.NewReader(r)
	var b []byte

	var i int
	nextToken = func() ([]byte, error) {
		var err error
		if i == len(b) {
			b, err = buf.ReadBytes('\n')
			if err != nil {
				return nil, err
			}
			i = 0
			j := len(b) - 1
			for 0 <= j && IsSpace(b[j]) {
				j--
			}
			b = b[0 : j+1]
		}
		for i < len(b) && IsSpace(b[i]) {
			i++
		}
		j := i
		for i < len(b) && !IsSpace(b[i]) {
			i++
		}
		if i == j {
			return nil, io.ErrUnexpectedEOF
		}
		return b[j:i], nil
	}
}

// -----------------------------------------------------------------------------

// IO functions

// Reads next token and return it as []byte
func readb() []byte {
	b, err := nextToken()
	if err != nil {
		panic(err)
	}
	return b
}

// Reads next token and return it as string
func reads() string {
	return string(readb())
}

// Read next line as []byte
func readbln() []byte {
	b, err := nextLine()
	if err != nil {
		panic(err)
	}
	return b
}

// Read next line as string
func readsln() string {
	return string(readbln())
}

// Reads next token and return it as int64
func readll() int64 {
	i, err := strconv.ParseInt(reads(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

// Reads next token and return it as int
func readi() int {
	return int(readll())
}

// Reads next token and return it as float64
func readf() float64 {
	f, err := strconv.ParseFloat(reads(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

// ReadIntSlice returns an integer slice that has n integers.
func readislice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readi()
	}
	return b
}

// ReadInt64Slice returns as int64 slice that has n integers.
func readllslice(n int) []int64 {
	b := make([]int64, n)
	for i := 0; i < n; i++ {
		b[i] = readll()
	}
	return b
}

// Write args to OutputWriter with the format f
func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(OutputWriter, f, args...)
}

// Write args to OutputWriter without format
func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(OutputWriter, args...)
}

// Write args to stderr with the format f
func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

// Write args to stderr without format
func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// -----------------------------------------------------------------------------

// Simple math functions

const (
	// big prime
	MOD = 1000000007
	INF = math.MaxInt64
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func minll(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxll(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func absll(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

// egcd(a, b) returns d, x, y:
//   d is gcd(a,b)
//   x, y are  integers that satisfy ax + by = d
func egcd(a, b int) (int, int, int) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcd(b, a%b)
	return d, y, x - a/b*y
}

func egcdll(a, b int64) (int64, int64, int64) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcdll(b, a%b)
	return d, y, x - a/b*y
}

func gcd(a, b int) int {
	d, _, _ := egcd(a, b)
	return d
}

func gcdll(a, b int64) int64 {
	d, _, _ := egcdll(a, b)
	return d
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

// lower_bound
func bisectLeft(a []int, x int) int {
	return sort.SearchInts(a, x)
}

// upper_bound
func bisectRight(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}

// set up IO functions
func init() {
	// for non-interactive
	SetInput(os.Stdin)
	SetOutput(os.Stdout)

	// Enable below when interactive.  Its ok to leave above intact.
	// SetInteractive(os.Stdout, os.Stdin)
}

func main() {
	defer Flush()

	S := reads()
	Q := readi()

	d := New()

	for _, r := range S{
		d.PushRight(string(r))
	}

	Query := make([][]string, Q)

	for i := range Query {
		Query[i] = make([]string, 3)

		a := readi()

		if a == 1 {
			Query[i][0] = "1"
		} else {
			Query[i][0] = "2"
			Query[i][1] = reads()
			Query[i][2] = reads()
		}
	}

	rev := false

	for _, q := range Query {
		if q[0] == "1" {
			rev = !rev
		} else {
			if rev {
				if q[1] == "1" {
					d.PushRight(q[2])
				} else {
					d.PushLeft(q[2])
				}
			} else {
				if q[1] == "1" {
					d.PushLeft(q[2])
				} else {
					d.PushRight(q[2])
				}
			}
		}
	}

	if rev{
		for{
			s := d.PopRight()

			if s == nil{
				return
			}
			fmt.Print(s)
		}

	} else{
		for{
			s := d.PopLeft()

			if s == nil{
				return
			}
			fmt.Print(s)
		}
	}
}

const blockSize = 4096

// Double ended queue data structure.
type Deque struct {
	leftIdx  int
	leftOff  int
	rightIdx int
	rightOff int

	blocks [][]interface{}
	left   []interface{}
	right  []interface{}
}

// Creates a new, empty deque.
func New() *Deque {
	result := new(Deque)
	result.blocks = [][]interface{}{make([]interface{}, blockSize)}
	result.right = result.blocks[0]
	result.left = result.blocks[0]
	return result
}

// Pushes a new element into the queue from the right, expanding it if necessary.
func (d *Deque) PushRight(data interface{}) {
	d.right[d.rightOff] = data
	d.rightOff++
	if d.rightOff == blockSize {
		d.rightOff = 0
		d.rightIdx = (d.rightIdx + 1) % len(d.blocks)

		// If we wrapped over to the left, insert a new block and update indices
		if d.rightIdx == d.leftIdx {
			buffer := make([][]interface{}, len(d.blocks)+1)
			copy(buffer[:d.rightIdx], d.blocks[:d.rightIdx])
			buffer[d.rightIdx] = make([]interface{}, blockSize)
			copy(buffer[d.rightIdx+1:], d.blocks[d.rightIdx:])
			d.blocks = buffer
			d.leftIdx++
			d.left = d.blocks[d.leftIdx]
		}
		d.right = d.blocks[d.rightIdx]
	}
}

// Pops out an element from the queue from the right. Note, no bounds checking are done.
func (d *Deque) PopRight() (res interface{}) {
	d.rightOff--
	if d.rightOff < 0 {
		d.rightOff = blockSize - 1
		d.rightIdx = (d.rightIdx - 1 + len(d.blocks)) % len(d.blocks)
		d.right = d.blocks[d.rightIdx]
	}
	res, d.right[d.rightOff] = d.right[d.rightOff], nil
	return
}

// Returns the rightmost element from the deque. No bounds are checked.
func (d *Deque) Right() interface{} {
	if d.rightOff > 0 {
		return d.right[d.rightOff-1]
	} else {
		return d.blocks[(d.rightIdx-1+len(d.blocks))%len(d.blocks)][blockSize-1]
	}
}

// Pushes a new element into the queue from the left, expanding it if necessary.
func (d *Deque) PushLeft(data interface{}) {
	d.leftOff--
	if d.leftOff < 0 {
		d.leftOff = blockSize - 1
		d.leftIdx = (d.leftIdx - 1 + len(d.blocks)) % len(d.blocks)

		// If we wrapped over to the right, insert a new block and update indices
		if d.leftIdx == d.rightIdx {
			d.leftIdx++
			buffer := make([][]interface{}, len(d.blocks)+1)
			copy(buffer[:d.leftIdx], d.blocks[:d.leftIdx])
			buffer[d.leftIdx] = make([]interface{}, blockSize)
			copy(buffer[d.leftIdx+1:], d.blocks[d.leftIdx:])
			d.blocks = buffer
		}
		d.left = d.blocks[d.leftIdx]
	}
	d.left[d.leftOff] = data
}

// Pops out an element from the queue from the left. Note, no bounds checking are done.
func (d *Deque) PopLeft() (res interface{}) {
	res, d.left[d.leftOff] = d.left[d.leftOff], nil
	d.leftOff++
	if d.leftOff == blockSize {
		d.leftOff = 0
		d.leftIdx = (d.leftIdx + 1) % len(d.blocks)
		d.left = d.blocks[d.leftIdx]
	}
	return
}

// Returns the leftmost element from the deque. No bounds are checked.
func (d *Deque) Left() interface{} {
	return d.left[d.leftOff]
}

// Checks whether the queue is empty.
func (d *Deque) Empty() bool {
	return d.leftIdx == d.rightIdx && d.leftOff == d.rightOff
}

// Returns the number of elements in the queue.
func (d *Deque) Size() int {
	if d.rightIdx > d.leftIdx {
		return (d.rightIdx-d.leftIdx)*blockSize - d.leftOff + d.rightOff
	} else if d.rightIdx < d.leftIdx {
		return (len(d.blocks)-d.leftIdx+d.rightIdx)*blockSize - d.leftOff + d.rightOff
	} else {
		return d.rightOff - d.leftOff
	}
}

// Clears out the contents of the queue.
func (d *Deque) Reset() {
	d.leftIdx = 0
	d.rightIdx = 0
	d.leftOff = 0
	d.rightOff = 0
	d.left = d.blocks[0]
	d.right = d.blocks[0]
}
