package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextString() string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	s := nextString()
	t := nextString()

	si := make([][]int, 26)
	for i := range s {
		a := rune(s[i]) - rune(`a`[0])
		si[a] = append(si[a], i+1)
	}
	debugf("%v\n", si)

	ans := uint64(0)
	idx := 0
	for i := range t {
		a := rune(t[i]) - rune(`a`[0])
		if len(si[a]) == 0 {
			_, _ = fmt.Fprint(writer, "-1")
			return
		}
		j := 0
		for si[a][j] <= idx {
			if j == len(si[a])-1 {
				idx = 0
				ans += uint64(len(s))
				debugf("reset: %s, %d, %d\n", string(t[i]), idx, ans)
				j = 0
				break
			}
			j++
		}
		idx = si[a][j]
		debugf("index: %s, %d\n", string(t[i]), idx)
	}

	_, _ = fmt.Fprintf(writer, "%d", ans+uint64(idx))
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
