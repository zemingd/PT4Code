package main

import (
	"bufio"
	"fmt"
	"os"
)

const N = 4040
var n int
var s string
var cnt[N][3] int

func getDiff(a int, b int) int {
	for i := 0; i < 3; i++ {
		if i != a && i != b {
			return i
		}
	}
	return -1
}

func getPos(c uint8) int {
	if c == 'R' {
		return 1
	}
	if c == 'B' {
		return 2
	}
	return 0
}

func main()  {
	var reader = bufio.NewReader(os.Stdin)
	var writer = bufio.NewWriter(os.Stdout)
	defer writer.Flush()
	fmt.Fscanf(reader, "%d\n", &n)
	fmt.Fscanf(reader, "%s\n", &s)

	for i := n; i >= 1; i-- {
		for j := 0; j < 3; j++ {
			cnt[i][j] = cnt[i + 1][j]
			if getPos(s[i - 1]) == j {
				cnt[i][j]++
			}
		}
	}

	var ret = int64(0)

	for i := 1; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if s[i - 1] != s[j - 1] {
				var a = getPos(s[i - 1])
				var b = getPos(s[j - 1])
				var c = getDiff(a, b)
				ret += int64(cnt[j + 1][c])
				var k = j + (j - i)
				if k > n {
					continue
				}
				if getPos(s[k - 1]) == c {
					ret--
				}
			}
		}
	}

	fmt.Fprintf(writer, "%d", ret)
}
