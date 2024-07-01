package main

import (
        "bufio"
        "fmt"
        "os"
        "sort"
)

var memoA = make(map[int]int, 0)
var memoB = make(map[int]int, 0)

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func sortA(l []int, n int) int {
        v, ok := memoA[n]
        if ok {
                return v
        }
        v = sort.SearchInts(l, n)
        memoA[n] = v
        return v
}
func sortB(l []int, n int) int {
        v, ok := memoB[n]
        if ok {
                return v
        }
        v = sort.SearchInts(l, n)
        memoB[n] = v
        return v
}
func main() {
        var N int
        reader := bufio.NewReader(os.Stdin)

        fmt.Fscanf(reader, "%d\n", &N)

        A := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d\n", &(A[i]))
        }
        sort.Ints(A)
        B := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d\n", &(B[i]))
        }
        sort.Ints(B)
        C := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d\n", &(C[i]))
        }
        sort.Ints(C)
        ans := 0
        for _, v := range C {
                b := sortB(B, v)
                for _, v := range B[0:b] {
                        a := sortA(A, v)
                        ans += len(A[0:a])
                }
        }
        fmt.Println(ans)
}