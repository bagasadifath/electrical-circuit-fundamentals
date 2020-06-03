% A program to calculate series-coupled resistor

clear;
clc;
close all;

disp("*******Program to calculate Series-Coupled Resistor*****");
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
    result = sum(valuesOfEachResistors);
    disp(" ");
    resistorValuesTable = array2table(valuesOfEachResistors);
    disp(resistorValuesTable);
end

disp(" ");
disp("*************************RESULT***************************");
disp("The total value is: ");
fprintf("%d Ohm\n", result);

clear;