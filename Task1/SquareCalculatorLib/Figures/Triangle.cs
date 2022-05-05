namespace SquareCalculatorLib.Figures
{
    public class Triangle : IFigure
    {
        public double SideA { get; set; }
        public double SideB { get; set; }
        public double SideC { get; set; }
        public bool Rectangular
        {
            get
            {
                return IsRectangular();
            }
        }

        public double Perimeter()
        {
            return Math.Round(SideA + SideB + SideC, 2);
        }

        public double Square()
        {
            if (IsRectangular())
            {
                //Теорема Пифагора
                return Math.Round(SideA * SideB * 0.5, 2);
            }
            else
            {
                //Полупериметр (Формула Герона) https://2mb.ru/matematika/geometriya/formula-gerona-dlya-ploshhadi-treugolnika/
                double p = (SideA + SideB + SideC) / 2;
                return Math.Round(Math.Sqrt(p * (p - SideA) * (p - SideB) * (p - SideC)), 2);
            }

        }

        private bool IsRectangular()
        {
            double squareCathetuses = Math.Round(Math.Pow(SideA, 2) + Math.Pow(SideB, 2));
            double squareHypotenuse = Math.Round(Math.Pow(SideC, 2));

            return squareCathetuses == squareHypotenuse;
        }
    }
}
