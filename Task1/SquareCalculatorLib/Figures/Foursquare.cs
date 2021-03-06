namespace SquareCalculatorLib.Figures
{
    public class Foursquare : IFigure
    {
        public double Side { get; set; }
        public double Perimeter()
        {
            return Math.Round(Side * 4, 2);
        }

        public double Square()
        {
            return Math.Round(Math.Pow(Side, 2), 2);
        }
    }
}
