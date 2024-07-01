package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    var r string
    var eof bool
    var strs []string
    r, eof = readOneLine(scanner)
    for {
        r, eof = readOneLine(scanner)
        if (eof) {
            break;
        }
        strs = split(r)
    }
    fmt.Print(tradeStr(strs[0], strs[1]))
}

func tradeStr(a string, b string) string {
    var str string
    for i:=0;i<len(a);i++ {
        str += string(a[i]) + string(b[i])
    }
    return str
}

func readOneLine(scanner *bufio.Scanner) (string, bool) {
    var s string
    var eof = false
    if scanner.Scan() {
        s = scanner.Text()
    } else {
        eof = true
    }
    return s, eof
}

func s2i(s string) int {
    var intVal,_ = strconv.Atoi(s)
    return intVal
}

func i2s(i int) string {
    return string(i)
}

func s2f(s string) float64 {
    var floatVal,_ = strconv.ParseFloat(s, 64)
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
        var intVal, _ = strconv.Atoi(string(str));
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
