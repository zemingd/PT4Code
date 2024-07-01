package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

// -----------------------------------------------------------------------------

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func readString() string   { sc.Scan(); return sc.Text() }
func readInt() int         { a, _ := strconv.Atoi(readString()); return a }
func readFloat64() float64 { a, _ := strconv.ParseFloat(readString(), 64); return a }
func readInts(n int) []int { ints := make([]int, n); for i := range ints { ints[i] = readInt()}; return ints }

// -----------------------------------------------------------------------------

const (
	MOD = 1000000007
	INF = int(math.MaxInt64)
)

func min(a, b int) int { if a < b { return a}; return b }
func max(a, b int) int { if a < b { return b}; return a }
func abs(a int) int    { if a < 0 { return -a }; return a }
func pow(p, q int) int { return int(math.Pow(float64(p), float64(q))) }
func gcd(a, b int) int {if b == 0 { return a } else { return gcd(b, a % b) } }
func lcm(a,b int) int  { return a  / gcd(a, b) * b }
func isInteger(x float64) bool { return math.Floor(x) == x }

// -----------------------------------------------------------------------------

func init() { sc.Split(bufio.ScanWords); sc.Buffer([]byte{}, INF) }

func main() {
	defer wr.Flush()

	N := readInt()
	S := readString()

	var R []int
	var G []int
	var B []int

	for i, s := range S {
		if s == 'R' {
			R = append(R, i)
		}
		if s == 'G' {
			G = append(G, i)
		}

		if s == 'B' {
			B = append(B, i)
		}
	}

	ans := len(R) * len(G) * len(B)

	for i, s := range S {
		for j := 1; j <= ((N-i) / 2); j++ {
			if i + j >= N {
				break
			}

			if i + j + j >= N {
				break
			}

			if s != rune(S[i+j]) && S[i+j] != S[i+j+j] && s != rune(S[i+j+j]) {
				ans--
			}
		}
	}

	fmt.Fprintln(wr, ans)
}
