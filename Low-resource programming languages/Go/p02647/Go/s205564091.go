package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

// func main2() {
// 	sc.Buffer(make([]byte, 0), 1e6) // maxTokenSize
// 	sc.Split(bufio.ScanWords)
// 	defer out.Flush()
// 	/* --- code --- */
// 	n, k := nextInt64(), nextInt64()
// 	nn := n * n
// 	a := make([][]int64, k+1)
// 	arr := make([][]int64, n)

// 	for i := int64(0); i <= k; i++ {
// 		a[i] = make([]int64, n)
// 	}

// 	for i := int64(0); i < n; i++ {
// 		a[0][i] = nextInt64()
// 	}

// 	for i := int64(0); i < n; i++ {
// 		arr[i] = append(arr[i], i)
// 	}

// 	for i := int64(0); i < n; i++ {
// 		if a[0][i] == arr[i] {

// 		}
// 		arr[i] = append(arr[i], i)
// 	}

// 	for t := int64(1); t <= k; t++ {
// 		total := int64(0)
// 		for i := int64(0); i < n; i++ {
// 			for j := max64(0, i-a[t-1][i]); j < min64(n, i+a[t-1][i]+1); j++ {
// 				a[t][j]++
// 				total++
// 			}
// 		}
// 		if total >= nn {
// 			for i := int64(0); i < n; i++ {
// 				a[k][i] = n
// 			}
// 			break
// 		}
// 	}

// 	for i := int64(0); i < n; i++ {
// 		fmt.Print(a[k][i])
// 		fmt.Print(" ")
// 	}
// 	fmt.Println("")

// 	for i := int64(0); i <= k; i++ {
// 		fmt.Println(a[i])
// 	}

// }

func main() {
	sc.Buffer(make([]byte, 0), 1e6) // maxTokenSize
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	/* --- code --- */
	n, k := nextInt(), nextInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for t := 0; t < k; t++ {
		b := make([]int, n)
		for i := 0; i < n; i++ {
			l := max(0, i-a[i])
			r := min(n-1, i+a[i])
			b[l]++
			if r+1 < n {
				b[r+1]--
			}
		}
		for i := 1; i < n; i++ {
			b[i] += b[i-1]
		}

		if reflect.DeepEqual(a, b) {
			break
		}
		for i := 0; i < n; i++ {
			a[i] = b[i]
		}
	}
	for i := 0; i < n; i++ {
		fmt.Print(a[i])
		fmt.Print(" ")
	}
	fmt.Println("")
}

func main3() {
	sc.Buffer(make([]byte, 0), 1e6) // maxTokenSize
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	/* --- code --- */
	n, k := nextInt(), nextInt()

	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for t := 0; t < k; t++ {
		b := make([]int, n)
		for i := 0; i < n; i++ {
			for j := max(0, i-a[i]); j < min(n, i+a[i]+1); j++ {
				b[j]++
			}
		}
		if reflect.DeepEqual(a, b) {
			break
		}
		for i := 0; i < n; i++ {
			a[i] = b[i]
		}
	}
	for i := 0; i < n; i++ {
		fmt.Print(a[i])
		fmt.Print(" ")
	}
	fmt.Println("")

}

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

// -*-*-*-*-*-*-*-*-
// * tool snippets *
// -*-*-*-*-*-*-*-*-
func duplicate2Int(base [][]int) (ret [][]int) {
	ret = make([][]int, len(base))
	for i, v := range base {
		ret[i] = append([]int{}, v...)
	}
	return
}

func max(a, b int) int {
	return int(max64(int64(a), int64(b)))
}

func max64(a int64, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	return int(min64(int64(a), int64(b)))
}

func min64(a int64, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
// * math flavor typical theories *
// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
func gcd(a, b int) int {
	if a > b {
		return gcd(b, a)
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func pow(a, b int) (ret int) {
	ret = a
	for i := 0; i < b-1; i++ {
		ret *= a
	}
	return
}

func powMod(n, m, mod int) (ret int) {
	ret = 1
	for m > 0 {
		if m&1 == 1 {
			ret *= n
			ret %= mod
		}
		n *= n
		n %= mod
		m >>= 1
	}
	return ret
}
