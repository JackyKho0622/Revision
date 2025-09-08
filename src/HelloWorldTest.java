import org.junit.Test;
import static org.junit.Assert.*;

public class HelloWorldTest {

    @Test
    public void testGetGreeting() {
        App app = new App();  // Use the correct class name: "App"
        assertEquals("Hello, World!", app.getGreeting());
    }
}
