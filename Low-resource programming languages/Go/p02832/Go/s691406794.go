package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
    "regexp"
)
type Hand struct {
    hand int
    result string // "w" , "d" "l"
}

func main() {
    // r:1 s:2 p:3
    scanner := bufio.NewScanner(os.Stdin)
    var r string
    r, _ = readOneLine(scanner)
    r, _ = readOneLine(scanner)
    ios := strAry2intAry(split(r))
    fmt.Println(calc(ios))
}

func calc(g []int) int{
    var del int
    var next = 1
    for i:=0;i<len(g);i++ {
        if g[i] == next {
            next++
        } else {
            del++
        }
    }
    // このとき数列全部一緒
    if len(g) == del {
        del = 0
    } else if next == 1 {
        del = -1
    }
    return del
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

func regexpExample() {
    // Your code here!
    var str = "13:20"
    r := regexp.MustCompile(`(\d+):(\d+)`)
    fmt.Println(r.FindStringSubmatch(str))
}

func reverse(res []int) []int {
    for i, j := 0, len(res)-1; i < j; i, j = i+1, j-1 {
        res[i], res[j] = res[j], res[i]
    }
    return res
}
