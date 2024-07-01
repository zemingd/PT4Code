package main

import (
        "bufio"
        "fmt"
        "os"
        "sort"
)

func main() {
        var N int
        reader := bufio.NewReader(os.Stdin)

        fmt.Fscanf(reader, "%d\n", &N)

        A := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d", &(A[i]))
        }
        reader.ReadLine()
        sort.Ints(A)
        B := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d", &(B[i]))
        }
        reader.ReadLine()
        sort.Ints(B)
        C := make([]int, N, N)
        for i := 0; i < N; i++ {
                fmt.Fscanf(reader, "%d", &(C[i]))
        }
        sort.Ints(C)
        ans := 0
        for _, v := range B {
                a := sort.SearchInts(A, v)
                c := sort.SearchInts(C, v+1)
                ans = ans + a*(N-c)
        }
        fmt.Println(ans)
}