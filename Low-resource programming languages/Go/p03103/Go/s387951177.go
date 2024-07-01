package main

import (
	"fmt"
	"sort"
)

type Product struct {
	Price    int64
	Quantity int
}

type ArrProduct []Product

func (a ArrProduct) Len() int           { return len(a) }
func (a ArrProduct) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a ArrProduct) Less(i, j int) bool { return a[i].Price < a[j].Price }

func main() {
	var N, M, B, t int
	var A, total int64
	var arr ArrProduct
	fmt.Scan(&N, &M)
	for i := 0; i < N; i++ {
		fmt.Scan(&A, &B)
		arr = append(arr, Product{A, B})
	}
	sort.Sort(ArrProduct(arr))
	for i := 0; i < M && t < M; i++ {
		q := arr[i].Quantity
		for j := 0; j < q && t < M; j++ {
			total += arr[i].Price
			t++
		}
	}
	fmt.Println(total)
}