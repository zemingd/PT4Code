package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(make([]byte, 0), 1e6)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	ans := BArr{
		init: []byte(sc.Text()),
		head: make([]byte, 0, 100000),
		tail: make([]byte, 0, 100000),
	}

	sc.Scan()
	Q, _ := strconv.Atoi(sc.Text())

	for i := 0; i < Q; i++ {
		sc.Scan()
		T, _ := strconv.Atoi(sc.Text())

		switch T {
		case 1:
			ans.swap = !ans.swap
		case 2:
			sc.Scan()
			F, _ := strconv.Atoi(sc.Text())
			sc.Scan()
			C := []byte(sc.Text())
			switch F {
			case 1:
				if ans.swap {
					ans.addTail(C)
				} else {
					ans.addHead(C)
				}
			case 2:
				if ans.swap {
					ans.addHead(C)
				} else {
					ans.addTail(C)
				}
			default:
				panic("invalid")
			}
		default:
			panic("invalid")
		}
	}
	fmt.Println(ans.string())
}

type BArr struct {
	init []byte
	head []byte
	tail []byte
	swap bool
}

func (b *BArr) addHead(a []byte) {
	b.head = append(b.head, a...)
}

func (b *BArr) addTail(a []byte) {
	b.tail = append(b.tail, a...)
}

func (b *BArr) string() string {
	if b.swap {
		swap(b.init)
		swap(b.tail)
		return string(b.tail) + string(b.init) + string(b.head)
	}
	swap(b.head)
	return string(b.head) + string(b.init) + string(b.tail)
}

func swap(arr []byte) {
	for i := 0; i < len(arr)/2; i++ {
		arr[i], arr[len(arr)-1-i] = arr[len(arr)-1-i], arr[i]
	}
}
