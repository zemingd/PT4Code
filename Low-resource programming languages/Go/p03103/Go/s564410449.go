package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
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
	var N, M, t int
	var total int64
	fmt.Scan(&N, &M)
	arr := make([]Product, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		sc.Scan()
		A, _ := strconv.ParseInt(sc.Text(), 10, 64)
		arr[i].Price = A
		sc.Scan()
		B, _ := strconv.Atoi(sc.Text())
		arr[i].Quantity = B
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