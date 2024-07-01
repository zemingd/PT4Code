// https://atcoder.jp/contests/abc128/tasks/abc128_a

package main

import "fmt"
import "bufio"
import "os"
import "strconv"

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	A := nextInt()
	P := nextInt()

	fmt.Println((A*3 + P) / 2)
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
