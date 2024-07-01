package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

// return list of primes less than N
func sieveOfEratosthenes(N int) (primes []int) {
	b := make([]bool, N)
	for i := 2; i < N; i++ {
		if b[i] == true {
			continue
		}
		primes = append(primes, i)
		for k := i * i; k < N; k += i {
			b[k] = true
		}
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	A := nextInt()
	B := nextInt()
	if A < B {
		A, B = B, A
	}
	// primes, _ := get_prime(A)
	primes := sieveOfEratosthenes(A)
	ans := 1
	for _, p := range primes {
		if A%p == 0 && B%p == 0 {
			ans++
		}
	}
	fmt.Fprintln(out, ans)
}

//配列の特定の要素を削除する関数
func remove(s_list []int, index int) (tmp []int) {
	tmp = append(s_list[:index], s_list[(index+1):]...)
	return
}

func get_prime(number int) ([]int, int) {
	//初期化
	prime_list := []int{}
	search_list := []int{}
	//2からnumberまでの数字の配列を作る
	for i := 2; i < number+1; i++ {
		search_list = append(search_list, i)
	}
	//探索リストの先頭値が√numberを超えたら終了
	limit := int(math.Sqrt(float64(number)))
	for search_list[0] <= limit {
		//探索リストの先頭を素数リストに移動
		p_num := search_list[0]
		prime_list = append(prime_list, p_num)
		//探索リストの先頭を削除
		search_list = remove(search_list, 0)
		//p_numの倍数を探索リストから篩落とす
		search_list_length := len(search_list)
		tmp := []int{}
		for i := 0; i < search_list_length; i++ {
			if search_list[i]%p_num != 0 {
				tmp = append(tmp, search_list[i])
			}
		}
		search_list = tmp
	}
	//探索リストの残りを素数リストに追加
	prime_list = append(prime_list, search_list...)
	return prime_list, len(prime_list)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// Genericsがないので筋肉で...
// interfaceでの取扱がようわからんし
func containStr(arr []string, target string) bool {
	for _, v := range arr {
		if v == target {
			return true
		}
	}
	return false
}

func PrintOut(src interface{}, joinner string) {
	switch reflect.TypeOf(src).Kind() {
	case reflect.Slice:
		s := reflect.ValueOf(src)
		for idx := 0; idx < s.Len(); idx++ {
			fmt.Fprintf(out, "%v", s.Index(idx))
			if idx < s.Len()-1 {
				fmt.Fprintf(out, "%s", joinner)
			} else {
				fmt.Fprintln(out)
			}
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
}

// mapからkeysとvaluesを返す感じのやつ
// なんかしらんけどmap[interface{}]interface{}しか受け付けない。なんのためのinterface{}やねん
// なので呼ぶときのmapはmap[int]stringとかじゃダメ
func splitKeyValue(m map[interface{}]interface{}) (keys, values []interface{}) {
	switch reflect.TypeOf(m).Kind() {
	case reflect.Map:
		s := reflect.ValueOf(m)
		for _, v := range s.MapKeys() {
			keys = append(keys, v)
			values = append(values, s.MapIndex(v))
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
	return
}
