package main

import (
	"bytes"
	"fmt"
	"log"
	"strconv"
)

func main() {
	log.SetFlags(log.Lshortfile)
	var N, M, Q int
	_, err := fmt.Scanf("%d %d %d", &N, &M, &Q)
	if err != nil {
		log.Fatal(err)
	}
	var data [510][510]int
	for i := 0; i < M; i++ {
		var l, r int
		_, err := fmt.Scanf("%d %d", &l, &r)
		if err != nil {
			log.Fatal(err)
		}
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
		var p, q int
		_, err := fmt.Scanf("%d %d", &p, &q)
		if err != nil {
			log.Fatal(err)
		}
		buf.WriteString(strconv.Itoa(data[p][q]))
		buf.WriteString("\n")
	}
	fmt.Println(buf.String())
}