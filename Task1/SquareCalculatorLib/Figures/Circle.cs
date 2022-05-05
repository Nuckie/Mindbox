namespace SquareCalculatorLib.Figures
{
    public class Circle: IFigure
    {
        public double Radius { get; set; }

        public double Perimeter()
        {
            return Math.Round(Radius * 2 * 3.14, 2);
        }

        public double Square()
        {
            return Math.Round(Math.Pow(Radius,2) * 3.14, 2);
        }
    }
}
