namespace HolaMundo.Tests;

public class UnitTest1
{
    [Fact]
    public void GetGreeting_ReturnsHolaMundo()
    {
        var resultado = "Hola Mundo desde DevOps!";

        Assert.Equal("Hola Mundo desde DevOps!", resultado);
    }
}