% A program to calculate parallel-coupled resistor

clear;
clc;
close all;

disp("******Program to calculate Parallel-Coupled Resistor*****");
disp("**********************************************************");
numberResistor = input("Input the number of resistors: ");
disp(" ");

if numberResistor == 1
    disp("This is a single resistor");
    valuesOfSingleResistor = input("Please enter the values: ");
    result = valuesOfSingleResistor;
elseif numberResistor > 1
    for i = 1:numberResistor
        valuesOfEachResistors(i) = input('Enter value for each resistors: ');
    end
    result = 1./(sum(1./valuesOfEachResistors));
end

disp(" ");
resistorValuesTable = array2table(valuesOfEachResistors);
disp(resistorValuesTable);

disp(" ");
disp("*************************RESULT***************************");
disp("The total value is: ");
fprintf("%5.3f Ohm\n", result);