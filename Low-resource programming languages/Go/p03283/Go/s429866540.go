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
*/
import "C"

import (
	"bytes"
	"fmt"
	"log"
	"strconv"
)

func main() {
	log.SetFlags(log.Lshortfile)
	// str := C.CString("Hello world\n")
	// C.print(str)
	// ci := C.nextInt()
	// ci2 := int(C.nextInt())
	// n := 10
	// log.Println(ci, ci2+n)
	// var next = newScanner()
	N := int(C.nextInt())
	M := int(C.nextInt())
	Q := int(C.nextInt())
	// var N, M, Q int
	// _, err := fmt.Scanf("%d %d %d", &N, &M, &Q)
	// if err != nil {
	// 	log.Fatal(err)
	// }
	var data [510][510]int
	var l, r int
	for i := 0; i < M; i++ {
		// _, err := fmt.Scanf("%d %d", &l, &r)
		// if err != nil {
		// 	log.Fatal(err)
		// }
		l = int(C.nextInt())
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
	var p, q int
	for i := 0; i < Q; i++ {
		// _, err := fmt.Scanf("%d %d", &p, &q)
		// if err != nil {
		// 	log.Fatal(err)
		// }
		p = int(C.nextInt())
		q = int(C.nextInt())
		buf.WriteString(strconv.Itoa(data[p][q]))
		buf.WriteString("\n")
	}
	fmt.Println(buf.String())
}

//
// type scanner struct {
// 	r     *bufio.Reader
// 	buf   []byte
// 	begin int
// 	end   int
// 	// p     int
// }
//
// func newScanner() *scanner {
// 	rdr := bufio.NewReaderSize(os.Stdin, 1024)
// 	return &scanner{r: rdr}
// }
// func (s *scanner) next() string {
// 	s.pre()
// 	s.begin = s.end
// 	for ; s.end < len(s.buf); s.end++ {
// 		if s.buf[s.end] == ' ' {
// 			break
// 		}
// 	}
// 	result := s.buf[s.begin:s.end]
// 	s.end++
// 	return *(*string)(unsafe.Pointer(&result))
//
// }
// func (s *scanner) Line() string {
// 	s.pre()
// 	s.begin = s.end
// 	s.end = len(s.buf)
// 	result := s.buf[s.begin:]
// 	return *(*string)(unsafe.Pointer(&result))
// }
// func (s *scanner) String() string {
// 	return s.next()
// }
// func (s *scanner) Int() int {
// 	v, err := strconv.Atoi(s.next())
// 	// v, err := strconv.ParseInt(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) Ints(n int) []int {
// 	r := make([]int, n)
// 	for i := 0; i < n; i++ {
// 		r[i] = s.Int()
// 	}
// 	return r
// }
// func (s *scanner) Int64() int64 {
// 	v, err := strconv.ParseInt(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) Uint64() uint64 {
// 	v, err := strconv.ParseUint(s.next(), 10, 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) Float64() float64 {
// 	v, err := strconv.ParseFloat(s.next(), 64)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	return v
// }
// func (s *scanner) pre() {
// 	if s.end >= len(s.buf) {
// 		s.readLine()
// 		s.end = 0
// 	}
// }
// func (s *scanner) readLine() {
// 	s.buf = make([]byte, 0, 1024)
// 	for {
// 		l, p, err := s.r.ReadLine()
// 		if err != nil {
// 			log.Fatal(err)
// 		}
// 		s.buf = append(s.buf, l...)
// 		if !p {
// 			break
// 		}
// 	}
// }