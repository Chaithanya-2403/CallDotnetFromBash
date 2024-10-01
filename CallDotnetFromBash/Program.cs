using System;

public class Program
{
    static void Main(string[] args)
    {
        // Check if a file path is passed as an argument
        if (args.Length == 0)
        {
            Console.WriteLine("No file path provided.");
            return;
        }

        string filePath = args[0];

        // Example: Read the file (if you want to process the contents)
        try
        {
            Console.WriteLine($"Processing file: {filePath}");
            string fileContents = System.IO.File.ReadAllText(filePath);
            Console.WriteLine($"Contents of {filePath}:");
            Console.WriteLine(fileContents);
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error reading file: {ex.Message}");
        }
    }
}
