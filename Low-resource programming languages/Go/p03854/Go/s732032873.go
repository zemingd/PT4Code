package main

import (
	"bufio"
	"os"
	"strings"
	"sync"
)

const scBufSize = 1 * 1024 * 1024 // 1MB

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()
var w = []string{"dream", "dreamer", "erase", "eraser"}

var done = make(chan interface{}, 1)
var wg = &sync.WaitGroup{}

func main() {
	s := scans()

	go func() {
		for {
		}
	}()

	wg.Add(1)
	go check(done, s)
	wg.Wait()
	select {
	case <-done:
		os.Stdout.WriteString("YES")
	default:
		os.Stdout.WriteString("NO")
	}

}

func scans() string {
	sc.Scan()
	return sc.Text()
}

func check(done chan<- interface{}, s string) {
	defer wg.Done()
	for _, v := range w {
		if v == s {
			done <- struct{}{}
			return
		}
		if strings.HasPrefix(s, v) {
			wg.Add(1)
			go check(done, s[len(v):])
		}
	}
}
