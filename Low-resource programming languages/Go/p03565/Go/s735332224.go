package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

type long int64
type float float32
type double float64

// io
type Scanner struct {
    reader *bufio.Reader
    buffer []string
    pointer int
}

func NewScanner() *Scanner {
    return &Scanner{
        reader: bufio.NewReaderSize(os.Stdin,4096),
        pointer: 0,
    }
}

func (self *Scanner) NextLine () string {
    var buffer []byte
    for {
        line,isPrefix,_ := self.reader.ReadLine()

        buffer = append(buffer, line...)
        if !isPrefix {
            break
        }
    }
    return string(buffer)
} 

func (self *Scanner) Next () string {
    if self.pointer >= len(self.buffer) {
        line := self.NextLine()
        self.buffer = strings.Fields(line)
        self.pointer = 0
    }
    self.pointer++
    return self.buffer[self.pointer-1]
}

func (self *Scanner) NextInt () int {
    s := self.Next()
    i,_ := strconv.ParseInt(s,10,32)
    return int(i)
}

func (self *Scanner) NextLong () long {
    s := self.Next()
    l,_ := strconv.ParseInt(s,10,64)
    return long(l)
}

func (self *Scanner) NextFloat () float {
    s := self.Next()
    f,_ := strconv.ParseFloat(s,32)
    return float(f)
}

func (self *Scanner) NextDouble () double {
    s := self.Next()
    d,_ := strconv.ParseFloat(s,64)
    return double(d)
}
// math
// func Max (a,b int) int { if a < b { return b } else { return a } }
// func Max (a,b long) long { if a < b { return b } else { return a } }
func Min (a,b int) int { if a < b { return a } else { return b } }

func main () {
	cin := NewScanner()
	
	S := cin.Next()
	T := cin.Next()

	N := len(S)
	M := len(T)

	for i := N-M; i >= 0; i-- {
		flag := true
		for j := 0;j < M; j++ {
			if S[i+j] != T[j] && S[i+j] != '?' {
				flag = false
				break
			}
		}

		if flag {
			for j := 0;j < N; j++ {
				if i <= j && j < i+M {
					fmt.Print(string(T[j-i]))
				} else if S[j] == '?' {
					fmt.Print("a")
				} else {
					fmt.Print(string(S[j]))
				}
			}
			fmt.Println()
			return
		}
	}

	fmt.Println("UNRESTORABLE")
}