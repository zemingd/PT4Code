package main

import (
	"fmt"
	"strings"
	"unsafe"
)

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
	for i := range op0 {
		orVec(op0[i], op1[i])
	}
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
	for h := range op0 {
		for w := 0; w < len(op0[h]); w++ {
			v := op0[h][w]
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
					w++
				}
			}
		}
	}
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
