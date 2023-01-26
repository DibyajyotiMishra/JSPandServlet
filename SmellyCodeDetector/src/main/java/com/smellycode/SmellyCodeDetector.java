package com.smellycode;

import java.io.*;
import java.util.*;
import java.nio.file.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author dibyajyotimishra
 */
public class SmellyCodeDetector {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter file path:");
        String path = sc.nextLine();
        countLines(path);
        countNumberOfMethods(path);
    }

    private static void countLines(String filePath) {
        try {
            Path file = Paths.get(filePath);
            long numberOfLines = Files.lines(file).count();
            System.out.println("Number of Lines: " + numberOfLines);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void countNumberOfMethods(String filePath) {
        try {
            File file = new File(filePath);
            Scanner sc = new Scanner(file);
            int numberOfMethods = 0;
            
            while (sc.hasNextLine()) {
                Pattern functionPattern = Pattern.compile("\\s[a-zA-Z][a-zA-Z0-9_]*\\(");
                Matcher matcher = functionPattern.matcher(sc.nextLine());
                if (matcher.find()) {
                    numberOfMethods++;
                }
            }
            System.out.println("The given file has " + numberOfMethods + " methods.");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
