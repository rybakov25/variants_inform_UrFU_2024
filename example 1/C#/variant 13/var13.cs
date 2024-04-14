using System;
using System.Globalization;

namespace Lessons
{
    class Program
    {
        static void Main(string[] args)
        {
            double S, V, R, r, d;
            Console.Write("Введите радиус сферы: ");
            R = Convert.ToDouble(Console.ReadLine(), CultureInfo.InvariantCulture);
            Console.Write("Введите толщину стенки: ");
            d = Convert.ToDouble(Console.ReadLine(), CultureInfo.InvariantCulture);
            r = R - d;
            V = (4 / 3) * Math.PI * (R - r);
            S = 4 * Math.PI * Math.Pow(R, 2) * d;
            Console.WriteLine($"Объем материала сферы: V = {V}");
            Console.WriteLine($"Площадь поверхности сферы: S = {S}");
        }
    }
}
