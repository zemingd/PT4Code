package main

import (
	"fmt"
	"strings"
	"sync"
	"unsafe"
)

const p = 1000

var semaphore = make(chan bool, p)

func decode(s string) []byte {
	s = strings.Replace(s, "#", "1", -1)
	s = strings.Replace(s, ".", "0", -1)
	vec := *(*[]byte)(unsafe.Pointer(&s))

	for i := range vec {
		vec[i] -= '0'
	}
	return vec
}

func orVec(op0, op1 []byte) {
	for i := range op0 {
		op0[i] |= op1[i]
	}
}

func orMatrix(op0, op1 [][]byte) {
	var wg sync.WaitGroup

	for i := range op0 {
		wg.Add(1)
		semaphore <- true
		go func(op0 []byte, op1 []byte, wg *sync.WaitGroup) {
			defer func() {
				wg.Done()
				<-semaphore
			}()
			orVec(op0, op1)
		}(op0[i], op1[i], &wg)
	}
	wg.Wait()
}

func checkFullVec(b []byte) bool {
	for _, v := range b {
		if v == 0 {
			return false
		}
	}
	return true
}

func checkFullMatrix(d [][]byte) bool {
	for _, v := range d {
		if !checkFullVec(v) {
			return false
		}
	}
	return true
}

func genMask(op0, op1 [][]byte) {
	var wg sync.WaitGroup
	for h := range op0 {
		wg.Add(1)
		semaphore <- true
		go func(h int, wg *sync.WaitGroup) {
			func() {
				wg.Done()
				<-semaphore
			}()

			for w, v := range op0[h] {
				if v == 1 {
					op1[h][w] = 1
					if h != 0 {
						op1[h-1][w] = 1
					}
					if w != 0 {
						op1[h][w-1] = 1
					}
					if h != len(op0)-1 {
						op1[h+1][w] = 1
					}
					if w != len(op0[h])-1 {
						op1[h][w+1] = 1
					}
				}
			}
		}(h, &wg)

	}
	wg.Wait()
}

func main() {
	var h, w int

	fmt.Scanf("%d%d", &h, &w)

	a := [][]byte{}
	for i := 0; i < h; i++ {
		var s string
		fmt.Scanf("%s", &s)
		a = append(a, decode(s))
	}

	buf := make([][]byte, len(a))

	for i := 0; i < h; i++ {
		buf[i] = make([]byte, len(a[i]))
	}

	if checkFullMatrix(a) {
		fmt.Println(0)
		return
	}

	cnt := 0
	for {
		genMask(a, buf)
		cnt++
		if checkFullMatrix(buf) {
			fmt.Println(cnt)
			return
		}
		//orMatrix(a, buf)
		a, buf = buf, a
	}
}
