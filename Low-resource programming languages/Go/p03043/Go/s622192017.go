// https://atcoder.jp/contests/abc126/tasks/abc126_c

package main

import "fmt"
import "bufio"
import "os"
import "strconv"

import "math"

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	N := float64(nextInt())
	K := float64(nextInt())

	p1 := (N - K + 1) / N
	if p1 < 0 {
		p1 = 0
	}

	maxPow := math.Ceil(math.Log2(K))
	sum := 0.0
	for i := 1; i <= int(math.Min(K-1, N)); i++ {
		sum += math.Pow(2, maxPow-(math.Ceil(math.Log2(K/float64(i)))))
	}

	p2 := sum / math.Pow(2, maxPow)

	fmt.Println(p1 + p2/N)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func nextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
