using SquareCalculatorLib.Figures;
using Xunit;

namespace SquareCalculatorLib.Tests
{
    public class SquareCalculatorLibTests
    {
        [Fact]
        public void TestCircleSquare()
        {
            var circle = new Circle()
            {
                Radius = 1
            };

            var result = circle.Square();

            Assert.Equal(3.14, result);
            Assert.IsType<double>(result);
        }

        [Fact]
        public void TestTriangleSquare()
        {
            var triangle = new Triangle()
            {
                SideA = 10,
                SideB = 10,
                SideC = 14.14
            };

            var result = triangle.Square();

            Assert.Equal(50, result);
            Assert.IsType<double>(result);
        }

        [Fact]
        public void TestFoursquareSquare()
        {
            Foursquare foursquare = new Foursquare()
            {
                Side = 5
            };

            var result = foursquare.Square();

            Assert.Equal(25, result);
            Assert.IsType<double>(result);
        }

        [Fact]
        public void TestCirclePerimeter()
        {
            var circle = new Circle()
            {
                Radius = 1
            };

            var result = circle.Perimeter();

            Assert.Equal(6.28, result);
            Assert.IsType<double>(result);
        }

        [Fact]
        public void TestTrianglePerimeter()
        {
            var triangle = new Triangle()
            {
                SideA = 10,
                SideB = 10,
                SideC = 14.14
            };

            var result = triangle.Perimeter();

            Assert.Equal(34.14, result);
            Assert.IsType<double>(result);
        }

        [Fact]
        public void TestFoursquarePerimeter()
        {
            Foursquare foursquare = new Foursquare()
            {
                Side = 5
            };

            var result = foursquare.Perimeter();

            Assert.Equal(20, result);
            Assert.IsType<double>(result);
        }
    }
}