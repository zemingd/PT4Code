package main

/*
#include <stdio.h>
#include <stdlib.h>
void print(const char *str){
	printf("%s", str);
}
int nextInt(){
	int n;
	int _ = scanf("%d",&n);
	return n;
}

void scanint(int* n){
	int _ = scanf("%d", n);
}

*/
import "C"

import (
	"bytes"
	"fmt"
	"log"
	"strconv"
	"unsafe"
)

func nextInt() int {
	n := new(int)
	C.scanint((*C.int)(unsafe.Pointer(n)))
	return *n
}

func main() {
	log.SetFlags(log.Lshortfile)
	N := nextInt()
	M := nextInt()
	Q := nextInt()
	var data [510][510]int
	var l, r int
	for i := 0; i < M; i++ {
		l = nextInt()
		r = int(C.nextInt())
		data[l][r]++
	}

	for i := N; i >= 1; i-- {
		for j := 1; j <= N; j++ {
			data[i][j] += data[i+1][j]
			data[i][j] += data[i][j-1]
			data[i][j] -= data[i+1][j-1]
		}
	}
	var buf bytes.Buffer
	for i := 0; i < Q; i++ {
		p := nextInt()
		q := nextInt()
		buf.WriteString(strconv.Itoa(data[p][q]))
		buf.WriteString("\n")
	}
	fmt.Println(buf.String())
}