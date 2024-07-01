package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const maxBuf = 300100

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(buf, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	n := len(s)
	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())

	mp := make(map[string]struct{})
	for i := 0; i < n; i++ {
		for j := 1; j <= k; j++ {
			if i+j > n {
				break
			}
			mp[s[i:i+j]] = struct{}{}
		}
	}

	lis := make([]string, len(mp))
	i := 0
	for key := range mp {
		lis[i] = key
		i++
	}
	sort.Strings(lis)
	fmt.Println(lis[k-1])
}
