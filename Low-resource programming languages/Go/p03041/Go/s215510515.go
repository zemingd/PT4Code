// https://atcoder.jp/contests/abc126/tasks/abc126_a

package main

import "fmt"
import "bufio"
import "os"
import "strconv"
import "unicode"

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	_ = nextInt()
	K := nextInt()
	s := nextString()
	b := []byte(s)

	b[K-1] = byte(unicode.ToLower(rune(b[K-1])))
	fmt.Println(string(b))
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
