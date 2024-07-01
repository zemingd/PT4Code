package main

import (
	"bufio"
	"bytes"
	"encoding/binary"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func readInt() int {
	buf := make([]byte, 0, 10000000)
	for {
		l, p, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	B := bytes.NewReader(buf)
	var i int
	err := binary.Read(B, binary.LittleEndian, &i)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)

	func() {
		if A > K {
			fmt.Printf("%d %d\n", A-K, B)
			return
		}

		K = K - A
		if B > K {
			fmt.Printf("%d %d\n", 0, B-K)
			return
		}
		fmt.Println("0 0")
		return
	}()

}
