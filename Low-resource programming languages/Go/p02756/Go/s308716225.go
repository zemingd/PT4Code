package main

import (
	"fmt"
)

func main() {
	var S []byte
	fmt.Scan(&S)
	ans := BArr{
		init: S,
		head: make([]byte, 0, 100000),
		tail: make([]byte, 0, 100000),
	}

	var Q int
	fmt.Scan(&Q)

	for i := 0; i < Q; i++ {
		var T int
		fmt.Scan(&T)
		switch T {
		case 1:
			ans.swap = !ans.swap
		case 2:
			var F int
			fmt.Scan(&F)
			var C []byte
			fmt.Scan(&C)
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
