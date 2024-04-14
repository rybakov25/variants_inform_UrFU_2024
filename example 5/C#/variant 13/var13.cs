using System;

namespace Lessons
{
    class Program
    {
        static void Main(string[] args)
        {
            int n; // исходное число
            string s8, s16; // проебразованные числа
            Console.Write("Введите двоичное число: ");
            n = Convert.ToInt32(Console.ReadLine(), 2);
            s8 = Convert.ToString(n, 8);
            s16 = Convert.ToString(n, 16);
            Console.WriteLine($"Base 8: {s8}\tBase 16: {s16}");
        }
    }
}
