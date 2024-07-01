package main

import (
	"fmt"
	"strings"
	"sync"
)

func main() {
	var n, p int
	fmt.Scan(&n)
	fmt.Scan(&p)

	var max int

	dan := make([][]string, n, n)
	l, r, d, t := [2000][2000]int{}, [2000][2000]int{}, [2000][2000]int{}, [2000][2000]int{}
	for i := 0; i < n; i++ {
		var n string
		fmt.Scan(&n)
		dan[i] = strings.Split(n, "")
	}

	wg := &sync.WaitGroup{}

	wg.Add(1)
	go func() {
		for i := 0; i < n; i++ {
			for j := 0; j < p; j++ {
				if dan[i][j] == "#" {
					l[i][j] = 0
					d[i][j] = 0
				} else {
					if i == 0 {
						d[i][j] = 1
					} else {
						d[i][j] = d[i-1][j] + 1
					}
					if j == 0 {
						l[i][j] = 1
					} else {
						l[i][j] = l[i][j-1] + 1
					}
				}
			}
		}
		wg.Done()
	}()

	wg.Add(1)
	go func() {
		for i := n - 1; i >= 0; i-- {
			for j := p - 1; j >= 0; j-- {
				if dan[i][j] == "#" {
					r[i][j] = 0
					t[i][j] = 0
				} else {
					if i == n-1 {
						t[i][j] = 1
					} else {
						t[i][j] = t[i+1][j] + 1
					}
					if j == p-1 {
						r[i][j] = 1
					} else {
						r[i][j] = r[i][j+1] + 1
					}
				}
			}
		}
		wg.Done()
	}()

	wg.Wait()
	for i := 0; i < n; i++ {
		for j := 0; j < p; j++ {
			if dan[i][j] != "#" {
				v := l[i][j] + r[i][j] + t[i][j] + d[i][j] - 3
				if v > max {
					max = v
				}
			}
		}
	}

	fmt.Printf("%#v\n", max)
}
