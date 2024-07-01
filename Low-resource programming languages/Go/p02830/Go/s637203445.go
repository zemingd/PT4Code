package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

/*　入力方法
１、簡単に書く
fmt.Scan
2,たくさん読む()
bufio.Scanner
(テキストを1行ずつ読み込む。fileからscannerを生成し、scan()が末尾に達してfalseを返すまで読み込む。Text()を呼ぶことで文字列として取り出すことができる)
3,長い行を読む
bufio.ReadLine
4, スペース区切りのデータを読み込む
sc.Split(bufio.ScanWords)
#########バッファの最大読み込みの数を変更するには
sc.Buffer(buf,MaxBuf)#MAXBUFのところにサイズをしていする
*/

/* 書き込み
１、接頭辞F（前）
書き込み先を指定できる
2,接頭辞S(前)
出力ではなくフォーマットした結果を文字列で返す
3,接頭辞 f（後ろ）
フォーマット（文字列型など）を指定することができる
４、接頭辞 ln（後ろ）
オペランドの間に半角スペースが入り、文字列の最後に開業が追加

・interface{}型
どのような型がくるかわからないときに演算はできないが全ての型を受ける
new(T)
任意の型

*/
/*
フォーマット文字列
%c 1文字を出力　　　%d　　整数を10進む
%s 文字列を出力

指定子	対応する型	説明	使用例
%c	char	１文字を出力する
%s	char *	文字列を出力する
%d	int, short	整数を10進で出力する
%u	unsigned int, unsigned short	符号なし整数を10進で出力する
%o	int, short,unsigned int, unsigned short	整数を8進で出力する
%x	int, short,unsigned int, unsigned short	整数を16進で出力する
%f	float	実数を出力する
%e	float	実数を指数表示で出力する
%g	float	実数を最適な形式で出力する
%ld	long	倍精度整数を10進で出力する
%lu	unsigned long	符号なし倍精度整数を10進で出力する
%lo	long, unsigned long	倍精度整数を8進で出力する
%lx	long, unsigned long	倍精度整数を16進で出力する
%lf	double	倍精度実数を出力する
*/
/*
strconvパッケージ→　文字列と基本データ型の双方向変換を実装
func Atob(str string)(value bool,err os.Error)
文字列で表されている論理値を返す。それ以外のときはエラー

func Atof(s string)(f float,err os.Error)
floatのサイズによってAtof32またはAtof64を呼ぶ

func Atoi(s string(i int,error os.Error))
戻り値がint型を返す

*/
/*
string と[]byteの違いについて
*/
const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func putf(format string, a ...interface{}) {
	fmt.Fprintf(wt, format, a...)
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

/*strings.Splitで入力したものを分ける*/
func Scanner() []string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	slice := strings.Split(s, " ")
	return slice

}

/* ---------------IO-------------------*/
func next() string {
	sc.Scan()
	return sc.Text()

}

/*型変換*/
func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		/*panic関数　　強制的にエラーを発生させるもの*/
		panic(err)
	}
	return i

}

/* 整数型に型変換したものを配列に格納する*/
func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

/*"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""*/
func main() {
	var n int
	fmt.Scan(&n)

	var s, t []byte
	fmt.Scan(&s, &t)

	for i := 0; i < n; i++ {
		fmt.Print(string([]byte{s[i]}))
		fmt.Print(string([]byte{t[i]}))
	}
	fmt.Println()

}
