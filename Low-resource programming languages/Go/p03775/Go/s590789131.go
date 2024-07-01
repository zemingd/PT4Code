package main

import (
    "fmt"
    "sort"
    "strconv"
)

func main() {
    var n int
    fmt.Scan(&n)

    // F(A,B) =「10 進表記における、A の桁数と B の桁数のうち大きい方」
    // 2 つの正の整数の組 (A,B) が N=A×B を満たすように動くときの F(A,B) の最小値を出力せよ。
    // for文で、√nまでの約数を全探査
    // ループの中で、n/iで割り切れたときのi(A)と割った結果(B)から、大きい方の桁数を導き出す
    // 導き出した桁数をsliceに保存
    // ループ後、最も少ないsliceをsortで導き出す
    var results []int = make([]int, 0)
    for i := 1; i * i <= n; i++  {
        if n % i == 0 {
            var b int = n / i
            var strA string = strconv.Itoa(i)
            var strB string = strconv.Itoa(b)
            var digitA int = len(strA)
            var digitB int = len(strB)
            if digitA >= digitB {
                results = append(results, digitA)
            } else {
                results = append(results, digitB)
            }
        }
    }
    sort.Ints(results)
    fmt.Println(results[0])

}
