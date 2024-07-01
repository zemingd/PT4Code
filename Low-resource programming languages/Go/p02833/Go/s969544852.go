package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
    // "sort"
    // "regexp"
)

const (
    initialBufSize = 10000
    maxBufSize = 1000000
)
var reader = bufio.NewReaderSize(os.Stdin, maxBufSize)
var writer = bufio.NewWriter(os.Stdout)

func main() {
    var r string
    r = readLine()
    var n = int64(s2i(r))
    res := min(factorial2(n, 2), factorial2(n, 5))
    fmt.Println(res)
}

func factorial2(n int64, p int64) int64 {
    if n % 2 == 1 {
        return factorial(n, p) - factorial2(n - 1, p)
    } 
    res := factorial(n / 2, p)
    if p == 2 {
        res += n / 2
    }
    return res
}

func factorial(n int64, p int64) int64 {
    if n == 0 {
        return 0
    }
    return n / p + factorial(n / p, p)
}

func min(a int64, b int64) int64 {
    if a > b {
        return b
    }
    return a
}

func write(s string) {
    writer.WriteString(s)
}

func print() {
    writer.Flush()
}

func readLine() string {
    buf := make([]byte, 0, maxBufSize)
    for {
        l, p, e := reader.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf)
}

func s2i(s string) int {
    var intVal,e = strconv.Atoi(s)
    if e != nil {
        panic(e)
    }
    return intVal
}

func i2s(i int) string {
    return string(i)
}

func s2f(s string) float64 {
    var floatVal,e = strconv.ParseFloat(s, 64)
    if e != nil {
        panic(e)
    }
    return floatVal
}

func sum(i []int) int {
    sum := 0
    for _,val := range i {
        sum += val
    }
    return sum
}

func split(s string) []string {
    return strings.Fields(s)
}

func strAry2intAry(strs []string) []int {
    var ret = make([]int, 0, len(strs))
    for _ , str := range strs {
        var intVal, e = strconv.Atoi(string(str));
        if e != nil {
            panic(e)
        }
        ret = append(ret, intVal)
    }
    return ret
}

func intAry2strAry(nums []int) []string {
    var ret = make([]string, 0, len(nums))
    for _ , num := range nums {
        var strVal = strconv.Itoa(num);
        ret = append(ret, strVal)
    }
    return ret
}

func ary2str(strs []string) string {
    return strings.Join(strs, " ")
}

func reverse(res []int) []int {
    for i, j := 0, len(res)-1; i < j; i, j = i+1, j-1 {
        res[i], res[j] = res[j], res[i]
    }
    return res
}

//  
// func regexpExample() {
//     // Your code here!
//     var str = "13:20"
//     r := regexp.MustCompile(`(\d+):(\d+)`)
//     fmt.Println(r.FindStringSubmatch(str))
// }


// type Country struct {
//     gold int
//     silver int
//     blonze int
// }

// // 複数ソートのサンプル
// func stableSortExample() []Country{
//     var country = []Country {
//         {gold:1, silver:2, blonze:3},
//         {gold:1, silver:2, blonze:3},
//         {gold:1, silver:3, blonze:2},
//         {gold:1, silver:3, blonze:3},
//     }
//     sort.SliceStable(country, func(i, j int) bool { return country[i].blonze > country[j].blonze })
//     sort.SliceStable(country, func(i, j int) bool { return country[i].silver > country[j].silver })
//     sort.SliceStable(country, func(i, j int) bool { return country[i].gold > country[j].gold })
//     return country
// }