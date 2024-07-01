package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"sync"
)

func main() {
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		b := bufio.NewScanner(os.Stdin)
		b.Split(bufio.ScanWords)
		b.Scan()
		A, _ := strconv.Atoi(b.Text())
		b.Scan()
		B, _ := strconv.Atoi(b.Text())
		if B%A == 0 {
			fmt.Println(A + B)
		} else {
			fmt.Println(A - B)
		}
	}()
	wg.Wait()
}
