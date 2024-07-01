package main

import (
    "bufio"
    "os"
    "fmt"
    "strconv"
)

// 文字列を取得する
func getString(s *bufio.Scanner) string {
    s.Scan()
    return s.Text()
}

// 数字を取得する
func getInt(s *bufio.Scanner) (int, error) {
    s.Scan()
    return strconv.Atoi(s.Text())
}

// 文字列を反転する
func Reverse(s string) string {
    runes := []rune(s)
    
    for i,j:=0,len(runes)-1; i<j; i, j=i+1,j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    
    return string(runes)
}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Split(bufio.ScanWords)
    
    // 1文字目取得
    ans := getString(scanner)
    
    // 2文字目取得
    q, _ := getInt(scanner)
    
    for i:=0; i<q; i++ {
        x, _ := getInt(scanner)
        if x == 1 {
            ans = Reverse(ans)
        }else if x == 2 {
            y, _ := getInt(scanner)
            z := getString(scanner)
            if y == 1 {
                ans = z + ans
            }else if y == 2 {
                ans = ans + z
            }
        }
    }
    fmt.Println(ans)
}