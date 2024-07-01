package main

import (
	"bufio"
	"fmt"
	"os"
)

type Node struct {
	Value int64
	Next  *Node
}

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var base int64
	base = 1000000000 + 7

	var n int64
	fmt.Fscan(r, &n)

	first := &Node{
		Value: 0,
		Next:  nil,
	}

	tmp := first

	var a int64
	var sum int64
	for i := int64(0); i < n; i++ {
		fmt.Fscan(r, &a)
		newNode := &Node{
			Value: a,
			Next:  nil,
		}
		tmp.Next = newNode
		tmp = newNode

		sum += a
		sum %= base
	}

	var result int64

	iNode := first.Next
	for iNode != nil {
		// jNode := iNode.Next
		// for jNode != nil {
		// 	r := (iNode.Value * jNode.Value) % base
		// 	result += r
		// 	result %= base
		// 	jNode = jNode.Next
		// }

		if sum < iNode.Value {
			sum += base
		}
		sum -= iNode.Value
		sum %= base
		result += iNode.Value * sum
		result %= base
		iNode = iNode.Next
	}

	fmt.Fprintln(w, result)

}
