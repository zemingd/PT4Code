using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtCoder_20190707_1
{    class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            string[] H = Console.ReadLine().Split(' ');

            int[] dp = new int[N];

            for(int i = 1; i < N; i++)
            {
                dp[i] = int.MaxValue;
            }

            for(int i = 1; i < N; i++)
            {
                if (i == 1)
                {
                    dp[i] = Math.Min(dp[i], dp[i - 1] + Math.Abs(int.Parse(H[i]) - int.Parse(H[i - 1])));
                }
                else
                {
                    int[] a = { dp[i], dp[i - 1] + Math.Abs(int.Parse(H[i]) - int.Parse(H[i - 1])), dp[i - 2] + Math.Abs(int.Parse(H[i]) - int.Parse(H[i - 2])) };
                    
                    for(int j = 1; j < a.Length; j++)
                    {
                        if(a[j] < dp[i])
                        {
                            dp[i] = a[j];
                        }
                    }
                }
            }

            Console.WriteLine(dp[N - 1]);
        }
    }
}